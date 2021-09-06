import 'package:flutter/material.dart';

class WhatsKegelWidget extends StatefulWidget {
  final GlobalKey<ScaffoldState> parentScaffoldKey;

  const WhatsKegelWidget({Key key, this.parentScaffoldKey}) : super(key: key);
  @override
  _WhatsKegelWidget createState() => _WhatsKegelWidget();
}

class _WhatsKegelWidget extends State<WhatsKegelWidget> {
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
              "What's Kegel?",
              style: Theme.of(context).textTheme.headline1,
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              "Kegel is a form of exercise. It strengthens your pelvic floor muscles that support and control your bladder to prevent or control urinary incontinence.",
              style: Theme.of(context).textTheme.headline6,
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              "Kegel exercises have proven to help men last longer in bed. They strengthen pelvic floor muscles (PC muscles) to help improve your sexual performance and bring you more intense orgasms.",
              style: Theme.of(context).textTheme.headline6,
            ),
            SizedBox(
              height: 40,
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed(
                  '/WhatBenefits',
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
                  height: 40,
                  child: Center(
                    child: Text(
                      'What are the benefits?',
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
                Navigator.of(context).pushNamed(
                  '/HowKegel',
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
                  height: 40,
                  child: Center(
                    child: Text(
                      'How to do Kegel?',
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
                Navigator.of(context).pushNamed(
                  '/CanKegel',
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
                  height: 40,
                  child: Center(
                    child: Text(
                      'Can I do Kegel?',
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
