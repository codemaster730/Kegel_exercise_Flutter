import 'package:flutter/material.dart';

import 'package:table_calendar/table_calendar.dart';
import 'package:fl_chart/fl_chart.dart';

class MineWidget extends StatefulWidget {
  final GlobalKey<ScaffoldState> parentScaffoldKey;
  const MineWidget({
    Key key,
    this.parentScaffoldKey,
  }) : super(key: key);
  @override
  _MineWidgetState createState() => _MineWidgetState();
}

class _MineWidgetState extends State<MineWidget> {
  CalendarController _controller;

  void initState() {
    super.initState();
    _controller = CalendarController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // key: _con.scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.only(left: 5.0, top: 3),
          child: Text(
            'Mine',
            style: Theme.of(context).textTheme.headline1,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 5, vertical: 15),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              decoration: BoxDecoration(
                //color: Theme.of(context).primaryColor,
                color: Colors.white.withAlpha(200),
                borderRadius: BorderRadius.circular(26),
                boxShadow: [
                  BoxShadow(
                      color: Theme.of(context).primaryColor.withOpacity(0.15),
                      offset: Offset(0, 3),
                      blurRadius: 10)
                ],
              ),
              child: ListView(
                shrinkWrap: true,
                primary: false,
                children: <Widget>[
                  ListTile(
                    title: Padding(
                      padding: const EdgeInsets.only(left: 10.0, top: 18.0),
                      child: Text(
                        //S.of(context).profile_settings,
                        'Training',
                        style: Theme.of(context)
                            .textTheme
                            .headline5
                            .merge(TextStyle(fontWeight: FontWeight.bold)),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(
                          horizontal: 5,
                          vertical: 15,
                        ),
                        width: 150,
                        decoration: BoxDecoration(
                          color: Color(0xFFF56A95),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              left: 50,
                              top: 20,
                              child: Icon(
                                Icons.access_time,
                                size: 130,
                                color: Colors.white.withOpacity(0.05),
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 18.0,
                                    top: 18.0,
                                  ),
                                  child: Text('Total \nduration',
                                      style: Theme.of(context)
                                          .textTheme
                                          .subtitle1
                                          .merge(
                                              TextStyle(color: Colors.white))),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 18.0, top: 5.0, bottom: 18),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.baseline,
                                    children: [
                                      Text(
                                        '12',
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline4
                                            .merge(
                                                TextStyle(color: Colors.white)),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 5.0),
                                        child: Text(
                                          'min',
                                          style: Theme.of(context)
                                              .textTheme
                                              .subtitle2
                                              .merge(TextStyle(
                                                  color: Colors.white70)),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 5, vertical: 15),
                        width: 150,
                        decoration: BoxDecoration(
                          color: Color(0xFF8585FF),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              left: 50,
                              top: 20,
                              child: Icon(
                                Icons.credit_card,
                                size: 130,
                                color: Colors.white.withOpacity(0.05),
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 18.0, top: 18.0),
                                  child: Text(
                                    'Total \ndays',
                                    style: Theme.of(context)
                                        .textTheme
                                        .subtitle1
                                        .merge(TextStyle(color: Colors.white)),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 18.0, top: 5.0, bottom: 18),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.baseline,
                                    children: [
                                      Text(
                                        '3',
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline4
                                            .merge(
                                                TextStyle(color: Colors.white)),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 5.0),
                                        child: Text(
                                          'days',
                                          style: Theme.of(context)
                                              .textTheme
                                              .subtitle2
                                              .merge(TextStyle(
                                                  color: Colors.white70)),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              decoration: BoxDecoration(
                //color: Theme.of(context).primaryColor,
                color: Colors.white.withAlpha(200),
                borderRadius: BorderRadius.circular(26),
                boxShadow: [
                  BoxShadow(
                      color: Theme.of(context).primaryColor.withOpacity(0.15),
                      offset: Offset(0, 3),
                      blurRadius: 10)
                ],
              ),
              child: ListView(
                shrinkWrap: true,
                primary: false,
                children: <Widget>[
                  ListTile(
                    title: Padding(
                      padding: const EdgeInsets.only(left: 10.0, top: 18.0),
                      child: Text(
                        //S.of(context).profile_settings,
                        'Duration',
                        style: Theme.of(context)
                            .textTheme
                            .headline5
                            .merge(TextStyle(fontWeight: FontWeight.bold)),
                      ),
                    ),
                  ),
                  AspectRatio(
                    aspectRatio: 1,
                    child: Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(18),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            right: 18.0, left: 12.0, top: 24, bottom: 12),
                        child: LineChart(
                          mainData(),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              decoration: BoxDecoration(
                //color: Theme.of(context).primaryColor,
                color: Colors.white.withAlpha(200),
                borderRadius: BorderRadius.circular(26),
                boxShadow: [
                  BoxShadow(
                      color: Theme.of(context).primaryColor.withOpacity(0.15),
                      offset: Offset(0, 3),
                      blurRadius: 10)
                ],
              ),
              child: ListView(
                shrinkWrap: true,
                primary: false,
                children: <Widget>[
                  ListTile(
                    title: Padding(
                      padding: const EdgeInsets.only(left: 10.0, top: 18.0),
                      child: Text(
                        //S.of(context).profile_settings,
                        'Calendar',
                        style: Theme.of(context)
                            .textTheme
                            .headline5
                            .merge(TextStyle(fontWeight: FontWeight.bold)),
                      ),
                    ),
                  ),
                  Container(
                    child: TableCalendar(
                      initialCalendarFormat: CalendarFormat.month,
                      calendarStyle: CalendarStyle(
                          todayColor: Colors.blue,
                          selectedColor: Theme.of(context).primaryColor,
                          todayStyle: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 22.0,
                              color: Colors.white)),
                      headerStyle: HeaderStyle(
                        centerHeaderTitle: true,
                        formatButtonDecoration: BoxDecoration(
                          color: Colors.brown,
                          borderRadius: BorderRadius.circular(22.0),
                        ),
                        formatButtonTextStyle: TextStyle(color: Colors.white),
                        formatButtonShowsNext: false,
                      ),
                      startingDayOfWeek: StartingDayOfWeek.monday,
                      // onDaySelected: (date, events) {
                      //   print(date.toUtc());
                      // },
                      builders: CalendarBuilders(
                        selectedDayBuilder: (context, date, events) =>
                            Container(
                                margin: const EdgeInsets.all(5.0),
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    color: Theme.of(context).primaryColor,
                                    borderRadius: BorderRadius.circular(8.0)),
                                child: Text(
                                  date.day.toString(),
                                  style: TextStyle(color: Colors.white),
                                )),
                        todayDayBuilder: (context, date, events) => Container(
                            margin: const EdgeInsets.all(5.0),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(8.0)),
                            child: Text(
                              date.day.toString(),
                              style: TextStyle(color: Colors.white),
                            )),
                      ),
                      calendarController: _controller,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              decoration: BoxDecoration(
                //color: Theme.of(context).primaryColor,
                color: Colors.white.withAlpha(200),
                borderRadius: BorderRadius.circular(26),
                boxShadow: [
                  BoxShadow(
                      color: Theme.of(context).primaryColor.withOpacity(0.15),
                      offset: Offset(0, 3),
                      blurRadius: 10)
                ],
              ),
              child: ListView(
                shrinkWrap: true,
                primary: false,
                children: <Widget>[
                  ListTile(
                    onTap: () {
                      print("tatp");
                    },
                    dense: false,
                    title: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Text(
                        //S.of(context).profile_settings,
                        'History',
                        style: Theme.of(context)
                            .textTheme
                            .headline5
                            .merge(TextStyle(fontWeight: FontWeight.bold)),
                      ),
                    ),
                    trailing: Icon(
                      Icons.navigate_next,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  LineChartData mainData() {
    return LineChartData(
      lineTouchData: LineTouchData(
        touchTooltipData: LineTouchTooltipData(
          tooltipBgColor: Color(0xFFFE805D),
          tooltipRoundedRadius: 50,
          getTooltipItems: (List<LineBarSpot> lineBarsSpot) {
            return lineBarsSpot.map((lineBarSpot) {
              return LineTooltipItem(
                lineBarSpot.y.toString(),
                const TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold),
              );
            }).toList();
          },
        ),
        touchCallback: (LineTouchResponse touchResponse) {},
        handleBuiltInTouches: true,
      ),
      gridData: FlGridData(
        show: true,
        drawVerticalLine: false,
        getDrawingHorizontalLine: (value) {
          return FlLine(
            color: Colors.black.withOpacity(0.05),
            strokeWidth: 1,
          );
        },
        getDrawingVerticalLine: (value) {
          return FlLine(
            color: const Color(0xff37434d),
            strokeWidth: 1,
          );
        },
      ),
      titlesData: FlTitlesData(
        show: true,
        bottomTitles: SideTitles(
          showTitles: true,
          reservedSize: 22,
          getTextStyles: (value) => const TextStyle(
              color: Color(0xff68737d),
              fontWeight: FontWeight.bold,
              fontSize: 16),
          getTitles: (value) {
            if (value.toInt() < 10) {
              return '0${value.toInt()}';
            }
            switch (value.toInt()) {
              case 1:
                return '01';
              case 2:
                return '02';
              case 3:
                return '03';
            }
            return '${value.toInt()}';
          },
          margin: 8,
        ),
        leftTitles: SideTitles(
          showTitles: true,
          getTextStyles: (value) => const TextStyle(
            color: Color(0xff67727d),
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
          getTitles: (value) {
            return "${value.toInt()}m";
          },
          reservedSize: 28,
          margin: 12,
        ),
      ),
      borderData: FlBorderData(
          show: false, border: Border.all(color: Colors.red, width: 1)),
      minX: 1,
      maxX: 6,
      minY: 0,
      maxY: 6,
      lineBarsData: [
        LineChartBarData(
          spots: [
            FlSpot(1, 0),
            FlSpot(3, 2),
            FlSpot(4, 5),
            FlSpot(5, 3),
            FlSpot(6, 0),
          ],
          isCurved: true,
          colors: [Color(0xFFF5739E), Color(0xFFF5739E)],
          barWidth: 3,
          isStrokeCapRound: true,
          dotData: FlDotData(
            show: false,
          ),
          belowBarData: BarAreaData(
            show: true,
            colors: [Color(0xFFF5739E), Color(0xFFF5739E)]
                .map((color) => color.withOpacity(0.2))
                .toList(),
          ),
        ),
      ],
    );
  }
}
