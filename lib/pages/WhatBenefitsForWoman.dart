import 'package:flutter/material.dart';

class WhatBenefitsForWomanWidget extends StatefulWidget {
  final GlobalKey<ScaffoldState> parentScaffoldKey;

  const WhatBenefitsForWomanWidget({Key key, this.parentScaffoldKey})
      : super(key: key);
  @override
  _WhatBenefitsForWomanWidget createState() => _WhatBenefitsForWomanWidget();
}

class _WhatBenefitsForWomanWidget extends State<WhatBenefitsForWomanWidget> {
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
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          SingleChildScrollView(
            padding: EdgeInsets.only(left: 30, top: 20, right: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Benefits for women",
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
                  "- Improve blood circulation to your vagina, tighten your vagina and increase vaginal lubrication.",
                  style: Theme.of(context).textTheme.headline6,
                ),
                SizedBox(
                  height: 40,
                ),
                Text(
                  "- Increase sexual arousal, more pleasure during sex and make it easier for you to reach orgasm.",
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
                  "Pregnancy",
                  style: Theme.of(context).textTheme.headline5,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "- Prevent urinary incontinence by improving bladder control.",
                  style: Theme.of(context).textTheme.headline6,
                ),
                SizedBox(
                  height: 40,
                ),
                Text(
                  "- Reduce labor pain and shorten the time of labor by developing the ability to relax and control pelvic floor muscles.",
                  style: Theme.of(context).textTheme.headline6,
                ),
                SizedBox(
                  height: 40,
                ),
                Text(
                  "- Speed the postpartum recovery. Help heal perineal tissues, which are stretched during vaginal birth.",
                  style: Theme.of(context).textTheme.headline6,
                ),
                SizedBox(
                  height: 40,
                ),
                Center(
                  child: Image.asset(
                    'assets/img/ic_tip_3.png',
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
                  "- It can prevent urinary incontinence, uterine and vaginal prolapse caused by increased pressure in the abdomen.",
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
                  onPressed: () {},
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
          Positioned(
            bottom: 35,
            child: TextButton(
              onPressed: () {},
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Color(0xFFFD7A5A),
                ),
                padding: const EdgeInsets.all(10.0),
                child: SizedBox(
                  width: 340,
                  height: 40,
                  child: Center(
                    child: Text(
                      'Share to her',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
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
