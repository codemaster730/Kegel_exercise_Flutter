import 'package:flutter/material.dart';

class PleaseNoteWidget extends StatefulWidget {
  final GlobalKey<ScaffoldState> parentScaffoldKey;

  const PleaseNoteWidget({Key key, this.parentScaffoldKey}) : super(key: key);
  @override
  _PleaseNoteWidget createState() => _PleaseNoteWidget();
}

class _PleaseNoteWidget extends State<PleaseNoteWidget> {
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
              "Please note",
              style: Theme.of(context).textTheme.headline1,
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              "- Empty your bladder before exercising. Stop the urination is not an exercise. it's not recommended to do it regularly as it can increase the risk of a urinary tract infection.",
              style: Theme.of(context).textTheme.headline6,
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              "- Perseverance is important. You need to stick to it to see the results.",
              style: Theme.of(context).textTheme.headline6,
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              "- To maximize results, we strongly suggest you live a healthy lifestyle - don't smoke and drink, follow a low cholesterol diet.",
              style: Theme.of(context).textTheme.headline6,
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              "- Relax your body and mind.",
              style: Theme.of(context).textTheme.headline6,
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
