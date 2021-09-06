import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LearnWidget extends StatefulWidget {
  final GlobalKey<ScaffoldState> parentScaffoldKey;

  const LearnWidget({Key key, this.parentScaffoldKey}) : super(key: key);
  @override
  _LearnWidgetState createState() => _LearnWidgetState();
}

class _LearnWidgetState extends State<LearnWidget>
    with SingleTickerProviderStateMixin {
  int _current = 0;
  CarouselController carouselController = CarouselController();
  TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Theme.of(context).backgroundColor,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 70, bottom: 10),
                child: Text(
                  'Learn',
                  style: Theme.of(context).textTheme.headline1,
                ),
              ),
              Container(
                child: TabBar(
                  controller: tabController,
                  isScrollable: true,
                  indicatorColor: Colors.transparent,
                  labelColor: Theme.of(context).primaryColor,
                  labelStyle: TextStyle(fontWeight: FontWeight.bold),
                  unselectedLabelColor:
                      Theme.of(context).primaryColor.withOpacity(0.3),
                  onTap: (index) {
                    carouselController.animateToPage(index);
                  },
                  tabs: [
                    Tab(
                      child: Container(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(
                            'About Kegel',
                            style: TextStyle(
                              fontSize: 22,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Tab(
                      child: Container(
                        alignment: Alignment.center,
                        child: Text(
                          'How to do',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Tab(
                      child: Container(
                        alignment: Alignment.center,
                        child: Text(
                          'Benefits for women',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 0, top: 10, bottom: 20),
                child: CarouselSlider(
                  carouselController: carouselController,
                  options: CarouselOptions(
                      height: 480.0,
                      autoPlay: false,
                      enlargeCenterPage: true,
                      viewportFraction: 1,
                      aspectRatio: 2.0,
                      enableInfiniteScroll: false,
                      onPageChanged: (index, reason) {
                        setState(() {
                          _current = index;
                          tabController.index = index;
                        });
                      }),
                  items: <Widget>[
                    Builder(
                      builder: (BuildContext context) {
                        return Container(
                          width: MediaQuery.of(context).size.width - 40,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                "assets/img/bg_learn_card1_pink.png",
                              ),
                              fit: BoxFit.contain,
                            ),
                          ),
                          child: ListView(
                            shrinkWrap: true,
                            primary: false,
                            padding: EdgeInsets.symmetric(
                              vertical: 30,
                            ),
                            children: <Widget>[
                              ListTile(
                                onTap: () {
                                  Navigator.of(context).pushNamed(
                                    '/WhatsKegel',
                                  );
                                },
                                dense: false,
                                title: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 20,
                                  ),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        '01',
                                        style: TextStyle(
                                          color: Colors.white.withOpacity(0.5),
                                          fontSize: 20,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 5.0,
                                        ),
                                        child: Text(
                                          '|',
                                          style: TextStyle(
                                            color:
                                                Colors.white.withOpacity(0.5),
                                            fontSize: 15,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        'What\'s Kegel?',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 19,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                trailing: Icon(
                                  Icons.navigate_next,
                                  color: Colors.white.withOpacity(0.3),
                                ),
                              ),
                              Divider(
                                color: Colors.white.withOpacity(0.3),
                                indent: 50,
                              ),
                              ListTile(
                                onTap: () {
                                  Navigator.of(context).pushNamed(
                                    '/WhatBenefits',
                                  );
                                },
                                dense: false,
                                title: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 20,
                                  ),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        '02',
                                        style: TextStyle(
                                          color: Colors.white.withOpacity(0.5),
                                          fontSize: 20,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 5.0,
                                        ),
                                        child: Text(
                                          '|',
                                          style: TextStyle(
                                            color:
                                                Colors.white.withOpacity(0.5),
                                            fontSize: 15,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        'What are the benefits?',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 19,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                trailing: Icon(
                                  Icons.navigate_next,
                                  color: Colors.white.withOpacity(0.3),
                                ),
                              ),
                              Divider(
                                color: Colors.white.withOpacity(0.3),
                                indent: 50,
                              ),
                              ListTile(
                                onTap: () {
                                  Navigator.of(context).pushNamed(
                                    '/CanKegel',
                                  );
                                },
                                dense: false,
                                title: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 20,
                                  ),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        '03',
                                        style: TextStyle(
                                          color: Colors.white.withOpacity(0.5),
                                          fontSize: 20,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 5.0,
                                        ),
                                        child: Text(
                                          '|',
                                          style: TextStyle(
                                            color:
                                                Colors.white.withOpacity(0.5),
                                            fontSize: 15,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        'Can I do Kegel?',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 19,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                trailing: Icon(
                                  Icons.navigate_next,
                                  color: Colors.white.withOpacity(0.3),
                                ),
                              ),
                              Divider(
                                color: Colors.white.withOpacity(0.3),
                                indent: 50,
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                    Builder(
                      builder: (BuildContext context) {
                        return Container(
                          width: MediaQuery.of(context).size.width - 40,
                          margin: EdgeInsets.symmetric(horizontal: 5.0),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                "assets/img/bg_learn_card2_pink.png",
                              ),
                              fit: BoxFit.contain,
                            ),
                          ),
                          child: ListView(
                            shrinkWrap: true,
                            primary: false,
                            padding: EdgeInsets.symmetric(
                              vertical: 30,
                            ),
                            children: <Widget>[
                              ListTile(
                                onTap: () {
                                  Navigator.of(context).pushNamed(
                                    '/HowKegel',
                                  );
                                },
                                dense: false,
                                title: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 20,
                                  ),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        '01',
                                        style: TextStyle(
                                          color: Colors.white.withOpacity(0.5),
                                          fontSize: 20,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 5.0,
                                        ),
                                        child: Text(
                                          '|',
                                          style: TextStyle(
                                            color:
                                                Colors.white.withOpacity(0.5),
                                            fontSize: 15,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        'How to do Kegel?',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 19,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                trailing: Icon(
                                  Icons.navigate_next,
                                  color: Colors.white.withOpacity(0.3),
                                ),
                              ),
                              Divider(
                                color: Colors.white.withOpacity(0.3),
                                indent: 50,
                              ),
                              ListTile(
                                onTap: () {
                                  Navigator.of(context).pushNamed(
                                    '/FindMuscles',
                                  );
                                },
                                dense: false,
                                title: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 20,
                                  ),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        '02',
                                        style: TextStyle(
                                          color: Colors.white.withOpacity(0.5),
                                          fontSize: 20,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 5.0,
                                        ),
                                        child: Text(
                                          '|',
                                          style: TextStyle(
                                            color:
                                                Colors.white.withOpacity(0.5),
                                            fontSize: 15,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Text(
                                          'How to find pelvic floor muscles?',
                                          maxLines: 2,
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 19,
                                            fontWeight: FontWeight.bold,
                                          ),
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                trailing: Icon(
                                  Icons.navigate_next,
                                  color: Colors.white.withOpacity(0.3),
                                ),
                              ),
                              Divider(
                                color: Colors.white.withOpacity(0.3),
                                indent: 50,
                              ),
                              ListTile(
                                onTap: () {
                                  Navigator.of(context).pushNamed(
                                    '/PleaseNote',
                                  );
                                },
                                dense: false,
                                title: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 20,
                                  ),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        '03',
                                        style: TextStyle(
                                          color: Colors.white.withOpacity(0.5),
                                          fontSize: 20,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 5.0,
                                        ),
                                        child: Text(
                                          '|',
                                          style: TextStyle(
                                            color:
                                                Colors.white.withOpacity(0.5),
                                            fontSize: 15,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        'Please note',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 19,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                trailing: Icon(
                                  Icons.navigate_next,
                                  color: Colors.white.withOpacity(0.3),
                                ),
                              ),
                              Divider(
                                color: Colors.white.withOpacity(0.3),
                                indent: 50,
                              ),
                              ListTile(
                                onTap: () {
                                  Navigator.of(context).pushNamed(
                                    '/Disclaimer',
                                  );
                                },
                                dense: false,
                                title: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 20,
                                  ),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        '04',
                                        style: TextStyle(
                                          color: Colors.white.withOpacity(0.5),
                                          fontSize: 20,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 5.0,
                                        ),
                                        child: Text(
                                          '|',
                                          style: TextStyle(
                                            color:
                                                Colors.white.withOpacity(0.5),
                                            fontSize: 15,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        'Disclaimer',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 19,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                trailing: Icon(
                                  Icons.navigate_next,
                                  color: Colors.white.withOpacity(0.3),
                                ),
                              ),
                              Divider(
                                color: Colors.white.withOpacity(0.3),
                                indent: 50,
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                    Builder(
                      builder: (BuildContext context) {
                        return Container(
                          width: MediaQuery.of(context).size.width - 40,
                          margin: EdgeInsets.symmetric(horizontal: 5.0),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                "assets/img/bg_learn_card3.png",
                              ),
                              fit: BoxFit.contain,
                            ),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 50,
                                  bottom: 20,
                                ),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white.withOpacity(0.2),
                                    borderRadius: BorderRadius.circular(
                                      35,
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: SvgPicture.asset(
                                      'assets/img/female.svg',
                                      color: Colors.white,
                                      width: 35,
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 40.0,
                                  ),
                                  child: Text(
                                    'BENE-FITS FOR WOMEN',
                                    maxLines: 3,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 54,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 45.0),
                                child: RaisedButton(
                                  onPressed: () {
                                    Navigator.of(context).pushNamed(
                                      '/WhatBenefitsForWoman',
                                    );
                                  },
                                  textColor: Colors.white,
                                  padding: const EdgeInsets.all(0.0),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(40.0),
                                  ),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(40),
                                      gradient: LinearGradient(
                                        colors: <Color>[
                                          Color(0xFFFF529B),
                                          Color(0xFFFF70AC),
                                          Color(0xFFFF8BBC),
                                        ],
                                      ),
                                    ),
                                    padding: const EdgeInsets.all(10.0),
                                    child: SizedBox(
                                      width: 240,
                                      height: 40,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          const Text(
                                            'Learn',
                                            style: TextStyle(
                                              fontSize: 27,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Container(
                                            margin: const EdgeInsets.only(
                                              left: 5.0,
                                            ),
                                            child: Icon(Icons.arrow_forward),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
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
                    position: _current.toDouble(),
                    decorator: DotsDecorator(
                      size: const Size.square(5.0),
                      activeSize: const Size(15.0, 5.0),
                      color: Theme.of(context).primaryColor.withOpacity(0.3),
                      activeColor: Theme.of(context).primaryColor,
                      spacing: EdgeInsets.only(left: 5),
                      activeShape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
