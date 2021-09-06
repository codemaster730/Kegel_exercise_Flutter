import 'package:flutter/material.dart';

class DayExerciseWidget extends StatefulWidget {
  final GlobalKey<ScaffoldState> parentScaffoldKey;

  const DayExerciseWidget({Key key, this.parentScaffoldKey}) : super(key: key);
  @override
  _DayExerciseWidgetState createState() => _DayExerciseWidgetState();
}

class _DayExerciseWidgetState extends State<DayExerciseWidget> {
  final items = List<String>.generate(5, (i) => "Item $i");
  int selExe = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pushReplacementNamed('/Pages', arguments: 0);
          },
          icon: Icon(
            Icons.arrow_back_ios,
          ),
        ),
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(
          color: Colors.black38, //change your color here
        ),
        elevation: 0,
        centerTitle: true,
        title: Text('Level 1',
            style: TextStyle(
              color: Colors.black38,
              fontSize: 25,
            )),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: Container(
          margin: EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 10,
          ),
          height: 50,
          child: RaisedButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
              //side: BorderSide(color: Colors.red),
            ),
            onPressed: () {
              Navigator.of(context)
                  .pushReplacementNamed('/Exercise', arguments: 0);
            },
            color: Theme.of(context).primaryColor,
            textColor: Colors.white,
            child: Text(
              "START", //.toUpperCase(),
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
      ),
      body: Stack(
        alignment: AlignmentDirectional.topCenter,
        children: [
          ListView(
            primary: true,
            children: <Widget>[
              ListView.separated(
                padding: EdgeInsets.only(top: 170, bottom: 50),
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                primary: false,
                itemCount: items.length,
                separatorBuilder: (context, index) {
                  return SizedBox(height: 15);
                },
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 5.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: ListTile(
                      leading: Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: selExe == index
                              ? Colors.blue[50]
                              : Colors.yellow[50],
                        ),
                        child: Icon(
                          selExe == index ? Icons.graphic_eq : Icons.bolt,
                          size: 30,
                          color: selExe == index
                              ? Colors.blue[400]
                              : Colors.yellow[900],
                        ),
                      ),
                      title: Text(
                        '3" tense, 3" relax',
                        style: Theme.of(context).textTheme.headline6,
                      ),
                      subtitle: Text(
                        'x10',
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
          Container(
            color: Colors.grey[50],
            height: 170,
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Text(
                    'Day 1',
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  width: 110,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(26),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.schedule,
                        color: Colors.black38,
                        size: 20,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        '23:00',
                        style: TextStyle(
                          color: Colors.black38,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: ListTile(
                    title: Text(
                      //S.of(context).profile_settings,
                      'Exercises',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    trailing: Wrap(
                      spacing: 5, // space between two icons
                      children: <Widget>[
                        Icon(
                          Icons.content_copy,
                          color: Colors.black38,
                          size: 18,
                        ), // icon-1
                        Text(
                          '40',
                          style: TextStyle(
                            color: Colors.black38,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
