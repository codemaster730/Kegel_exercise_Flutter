import 'package:flutter/material.dart';

class CanKegelWidget extends StatefulWidget {
  final GlobalKey<ScaffoldState> parentScaffoldKey;

  const CanKegelWidget({Key key, this.parentScaffoldKey}) : super(key: key);
  @override
  _CanKegelWidget createState() => _CanKegelWidget();
}

class _CanKegelWidget extends State<CanKegelWidget> {
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
              "Can I do Kegel?",
              style: Theme.of(context).textTheme.headline1,
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              "You can benefit from Kegel exercises. if you:",
              style: Theme.of(context).textTheme.headline6,
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              "- Experience erectile dysfunction.",
              style: Theme.of(context).textTheme.headline6,
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              "- Frequent or urgent urination.",
              style: Theme.of(context).textTheme.headline6,
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              "- Suffer the symptoms of prostatitis.",
              style: Theme.of(context).textTheme.headline6,
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              "- Dribble after urination.",
              style: Theme.of(context).textTheme.headline6,
            ),
            SizedBox(
              height: 40,
            ),
            Center(
              child: Image.asset(
                'assets/img/ic_tip_1.png',
                width: 110,
              ),
            ),
            SizedBox(
              height: 60,
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
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
                      'Got it',
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
