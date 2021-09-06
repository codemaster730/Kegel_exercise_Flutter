import 'package:flutter/material.dart';

class DisclaimerWidget extends StatefulWidget {
  final GlobalKey<ScaffoldState> parentScaffoldKey;

  const DisclaimerWidget({Key key, this.parentScaffoldKey}) : super(key: key);
  @override
  _DisclaimerWidget createState() => _DisclaimerWidget();
}

class _DisclaimerWidget extends State<DisclaimerWidget> {
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
              "Disclaimer",
              style: Theme.of(context).textTheme.headline1,
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              "If you feel any discomfort, you may be doing the Kegel exercises incorrectly, or they may not be suited to your body. Ask your doctor for help or stop exercising. We're not responsible for injuries you may sustain from this exercise.",
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
