import 'package:flutter/material.dart';

class HowKegelWidget extends StatefulWidget {
  final GlobalKey<ScaffoldState> parentScaffoldKey;

  const HowKegelWidget({Key key, this.parentScaffoldKey}) : super(key: key);
  @override
  _HowKegelWidget createState() => _HowKegelWidget();
}

class _HowKegelWidget extends State<HowKegelWidget> {
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
      body: SingleChildScrollView(
        padding: EdgeInsets.only(left: 30, top: 20, right: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "How to do Kegel?",
              style: Theme.of(context).textTheme.headline1,
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              "Kegel requires a rhythmic contraction of pelvic floor muscles to strengthen these muscles.",
              style: Theme.of(context).textTheme.headline6,
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Image.asset(
                'assets/img/ic_tip_61.png',
                width: MediaQuery.of(context).size.width * 0.7,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed(
                  '/FindMuscles',
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Color(0xFFFFF2F0),
                ),
                padding: const EdgeInsets.all(10.0),
                child: SizedBox(
                  width: 340,
                  height: 70,
                  child: Center(
                    child: Text(
                      'How to find pelvic floor muscles?',
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
