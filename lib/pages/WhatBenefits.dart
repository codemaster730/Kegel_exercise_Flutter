import 'package:flutter/material.dart';

class WhatBenefitsWidget extends StatefulWidget {
  final GlobalKey<ScaffoldState> parentScaffoldKey;

  const WhatBenefitsWidget({Key key, this.parentScaffoldKey}) : super(key: key);
  @override
  _WhatBenefitsWidget createState() => _WhatBenefitsWidget();
}

class _WhatBenefitsWidget extends State<WhatBenefitsWidget> {
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
              "What are the benefits?",
              style: Theme.of(context).textTheme.headline1,
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              "Sex life",
              style: Theme.of(context).textTheme.headline5,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "- Help with erectile dysfunction.",
              style: Theme.of(context).textTheme.headline6,
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              "- Get more intense orgasms.",
              style: Theme.of(context).textTheme.headline6,
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              "- Last longer in bed.",
              style: Theme.of(context).textTheme.headline6,
            ),
            SizedBox(
              height: 40,
            ),
            Center(
              child: Image.asset(
                'assets/img/ic_tip_2.png',
                width: 120,
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              "Self-care",
              style: Theme.of(context).textTheme.headline5,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "- Prevent and reduce prostatitis.",
              style: Theme.of(context).textTheme.headline6,
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              "- Reduce urinary urgency and frequency.",
              style: Theme.of(context).textTheme.headline6,
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              "- Improve the symptoms of post micturition dribble.",
              style: Theme.of(context).textTheme.headline6,
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              "- Improve bladder and bowel control.",
              style: Theme.of(context).textTheme.headline6,
            ),
            SizedBox(
              height: 40,
            ),
            Center(
              child: Image.asset(
                'assets/img/ic_tip_5.png',
                width: 100,
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              "Privacy",
              style: Theme.of(context).textTheme.headline5,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "- You can do it anytime, anywhere. No one will know you are doing it.",
              style: Theme.of(context).textTheme.headline6,
            ),
            SizedBox(
              height: 40,
            ),
            Center(
              child: Image.asset(
                'assets/img/ic_tip_4.png',
                width: 100,
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
