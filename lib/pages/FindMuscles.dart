import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';

class FindMusclesWidget extends StatefulWidget {
  final GlobalKey<ScaffoldState> parentScaffoldKey;

  const FindMusclesWidget({Key key, this.parentScaffoldKey}) : super(key: key);
  @override
  _FindMusclesWidget createState() => _FindMusclesWidget();
}

class _FindMusclesWidget extends State<FindMusclesWidget> {
  CarouselController carouselController = CarouselController();
  bool isNextPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(
          color: Colors.black.withOpacity(0.5), //change your color here
        ),
        elevation: 0,
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(left: 0, top: 20, right: 0),
            child: CarouselSlider(
              carouselController: carouselController,
              options: CarouselOptions(
                height: 430.0,
                autoPlay: false,
                viewportFraction: 1,
                enableInfiniteScroll: false,
                onPageChanged: (index, reason) {
                  setState(() {
                    isNextPage = index == 0 ? false : true;
                  });
                },
              ),
              items: <Widget>[
                Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Method 1",
                            style: Theme.of(context).textTheme.headline1,
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Text(
                            "Muscles that can slow or stop the urination are pelvic floor muscles. Don't tense your buttocks, legs and abdomen when stopping midstream.",
                            style: Theme.of(context).textTheme.headline6,
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Center(
                            child: Image.asset(
                              'assets/img/ic_tip_7.png',
                              width: 90,
                            ),
                          ),
                          SizedBox(
                            height: 60,
                          ),
                        ],
                      ),
                    );
                  },
                ),
                Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Method 2",
                            style: Theme.of(context).textTheme.headline1,
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Text(
                            "Muscles that can prevent the passing of gas are pelvic floor muscles.",
                            style: Theme.of(context).textTheme.headline6,
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Center(
                            child: Image.asset(
                              'assets/img/ic_tip_8.png',
                              width: 90,
                            ),
                          ),
                          SizedBox(
                            height: 60,
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: Center(
              child: new DotsIndicator(
                dotsCount: 3,
                position: 0,
                decorator: DotsDecorator(
                  size: const Size.square(5.0),
                  activeSize: const Size(15.0, 5.0),
                  color: Theme.of(context).primaryColor.withOpacity(0.3),
                  activeColor: Color(0xFFFFA690),
                  spacing: EdgeInsets.only(left: 5),
                  activeShape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          TextButton(
            onPressed: () {
              if (isNextPage) {
                Navigator.pop(context);
              } else {
                carouselController.animateToPage(1);
              }
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: Color(0xFFFFF2F0),
              ),
              padding: const EdgeInsets.all(10.0),
              child: SizedBox(
                width: 340,
                height: 40,
                child: Center(
                  child: Text(
                    isNextPage ? 'Got it' : 'Next',
                    style: TextStyle(
                      fontSize: 27,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
