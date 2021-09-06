import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:percent_indicator/percent_indicator.dart';

class KegelWidget extends StatefulWidget {
  final GlobalKey<ScaffoldState> parentScaffoldKey;
  KegelWidget({Key key, this.parentScaffoldKey}) : super(key: key);
  @override
  _KegelWidgetState createState() => _KegelWidgetState();
}

class _KegelWidgetState extends State<KegelWidget> {
  int _selectLevel = 0;
  int _selectDay = 3;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        color: Theme.of(context).backgroundColor,
        child: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(
                top: 320,
              ),
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 8,
                    ),
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context)
                            .pushReplacementNamed('/DayExercise', arguments: 0);
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 15,
                        ),
                        height: 70,
                        width: screenSize.width * 0.8,
                        decoration: _selectDay == index
                            ? BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                  image: AssetImage(
                                    "assets/img/bg_learn_card1_pink.png",
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              )
                            : BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white,
                              ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(13),
                                    color: _selectDay == index
                                        ? Colors.white
                                        : Theme.of(context)
                                            .primaryColor
                                            .withOpacity(0.1),
                                  ),
                                  child: Icon(
                                    Icons.play_arrow_rounded,
                                    size: 35,
                                    color: Theme.of(context).primaryColor,
                                  ),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Day ${index + 1}",
                                      style: TextStyle(
                                        color: _selectDay == index
                                            ? Colors.white
                                            : Colors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.schedule,
                                          color: _selectDay == index
                                              ? Colors.white54
                                              : Colors.black38,
                                          size: 20,
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          "04:46",
                                          style: TextStyle(
                                            color: _selectDay == index
                                                ? Colors.white54
                                                : Colors.black38,
                                            fontSize: 18,
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ],
                            ),
                            Container(
                              child: LinearPercentIndicator(
                                width: screenSize.width * 0.19,
                                lineHeight: 7.0,
                                percent: 0.1,
                                backgroundColor: Theme.of(context)
                                    .primaryColor
                                    .withOpacity(0.3),
                                progressColor: _selectDay == index
                                    ? Colors.white
                                    : Theme.of(context).primaryColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            Positioned(
              top: 0,
              height: 350,
              width: screenSize.width,
              // color: Colors.blue,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 70,
                      left: 20,
                      bottom: 5,
                    ),
                    child: Text(
                      "Kegel",
                      style: Theme.of(context).textTheme.headline1,
                    ),
                  ),
                  Container(
                    width: screenSize.width,
                    height: 140,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 10,
                      itemBuilder: (BuildContext context, int index) {
                        return InkWell(
                          onTap: () {
                            setState(() {
                              _selectLevel = index;
                            });
                          },
                          child: Padding(
                            padding: index == 0
                                ? EdgeInsets.only(left: 20)
                                : index == 9
                                    ? EdgeInsets.only(right: 20)
                                    : EdgeInsets.zero,
                            child: Column(
                              children: [
                                SizedBox(
                                  width: 110,
                                  child: SvgPicture.asset(
                                    "assets/img/progressbar.svg",
                                    color: _selectLevel >= index
                                        ? Color(0xFF7293FF)
                                        : Color(0xFF7293FF).withOpacity(0.2),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                _selectLevel == index
                                    ? Container(
                                        height: 100,
                                        width: 100,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage(
                                              "assets/img/bg_level_select_pink.png",
                                            ),
                                            fit: BoxFit.contain,
                                          ),
                                        ),
                                        child: Center(
                                          child: Padding(
                                            padding:
                                                const EdgeInsets.only(top: 8.0),
                                            child: CircularPercentIndicator(
                                              radius: 55.0,
                                              lineWidth: 5.0,
                                              percent: 0.3,
                                              center: Text(
                                                "30%",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 17,
                                                ),
                                              ),
                                              progressColor: Colors.white,
                                              backgroundColor:
                                                  Colors.white.withOpacity(0.2),
                                            ),
                                          ),
                                        ),
                                      )
                                    : Container(
                                        height: 100,
                                        width: 100,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage(
                                              "assets/img/bg_level.png",
                                            ),
                                            fit: BoxFit.contain,
                                          ),
                                        ),
                                        padding: EdgeInsets.only(top: 10),
                                        child: Center(
                                          child: Text(
                                            "Level ${index + 1} \n"
                                            "0%",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Theme.of(context)
                                                  .primaryColor
                                                  .withOpacity(0.4),
                                              fontSize: 19,
                                              fontWeight: FontWeight.bold,
                                              height: 1.7,
                                            ),
                                          ),
                                        ),
                                      ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 20,
                      left: 20,
                    ),
                    child: Text(
                      "Level ${_selectLevel + 1}",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
