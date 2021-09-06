import 'package:flutter/material.dart';
import '../models/route_argument.dart';
import '../pages/KegelWidget.dart';
import '../pages/LearnWidget.dart';
import '../pages/MineWidget.dart';
import '../pages/SettingWidget.dart';

// ignore: must_be_immutable
class PagesWidget extends StatefulWidget {
  dynamic currentTab;
  RouteArgument routeArgument;
  Widget currentPage = KegelWidget();
  final GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey<ScaffoldState>();

  PagesWidget({
    Key key,
    this.currentTab,
  }) {
    if (currentTab != null) {
      if (currentTab is RouteArgument) {
        routeArgument = currentTab;
        currentTab = int.parse(currentTab.id);
      }
    } else {
      currentTab = 0;
    }
  }

  @override
  _PagesWidgetState createState() => _PagesWidgetState();
}

class _PagesWidgetState extends State<PagesWidget> {
  @override
  void initState() {
    super.initState();
    _selectTab(widget.currentTab);
  }

  void _selectTab(int tabItem) {
    setState(() {
      widget.currentTab = tabItem;
      switch (tabItem) {
        case 0:
          widget.currentPage = KegelWidget(
            parentScaffoldKey: widget.scaffoldKey,
          );
          break;
        case 1:
          widget.currentPage = LearnWidget(
            parentScaffoldKey: widget.scaffoldKey,
          );
          break;
        case 2:
          widget.currentPage = MineWidget(
            parentScaffoldKey: widget.scaffoldKey,
          );

          break;
        case 3:
          widget.currentPage = SettingWidget(
            parentScaffoldKey: widget.scaffoldKey,
          );
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.currentPage,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Theme.of(context).accentColor,
        selectedFontSize: 0,
        unselectedFontSize: 0,
        iconSize: 22,
        elevation: 0,
        backgroundColor: Colors.white,
        selectedIconTheme: IconThemeData(size: 28),
        unselectedItemColor: Theme.of(context).focusColor.withOpacity(1),
        currentIndex: widget.currentTab,
        onTap: (int i) {
          this._selectTab(i);
        },
        items: [
          BottomNavigationBarItem(
            icon: Column(
              children: [
                Icon(
                  Icons.notifications,
                  color: Theme.of(context).primaryColor.withOpacity(0.5),
                ),
                Text(
                  "Kegel",
                  style: TextStyle(
                    fontSize: 11.0,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).primaryColor.withOpacity(0.5),
                  ),
                ),
              ],
            ),
            activeIcon: Column(
              children: [
                Icon(
                  Icons.notifications,
                  color: Theme.of(context).primaryColor,
                ),
                Text(
                  "Kegel",
                  style: TextStyle(
                    fontSize: 11.0,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              ],
            ),
            label: 'Kegel',
          ),
          BottomNavigationBarItem(
            icon: Column(
              children: [
                Icon(
                  Icons.announcement,
                  color: Theme.of(context).primaryColor.withOpacity(0.5),
                ),
                Text(
                  "Learn",
                  style: TextStyle(
                    fontSize: 11.0,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).primaryColor.withOpacity(0.5),
                  ),
                ),
              ],
            ),
            activeIcon: Column(
              children: [
                Icon(
                  Icons.announcement,
                  color: Theme.of(context).primaryColor,
                ),
                Text(
                  "Learn",
                  style: TextStyle(
                    fontSize: 11.0,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              ],
            ),
            label: 'Learn',
          ),
          BottomNavigationBarItem(
            icon: Column(
              children: [
                Icon(
                  Icons.person,
                  color: Theme.of(context).primaryColor.withOpacity(0.5),
                ),
                Text(
                  "Mine",
                  style: TextStyle(
                    fontSize: 11.0,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).primaryColor.withOpacity(0.5),
                  ),
                ),
              ],
            ),
            activeIcon: Column(
              children: [
                Icon(
                  Icons.person,
                  color: Theme.of(context).primaryColor,
                ),
                Text(
                  "Mine",
                  style: TextStyle(
                    fontSize: 11.0,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              ],
            ),
            label: 'Mine',
          ),
          BottomNavigationBarItem(
            icon: Column(
              children: [
                Icon(
                  Icons.settings,
                  color: Theme.of(context).primaryColor.withOpacity(0.5),
                ),
                Text(
                  "Settings",
                  style: TextStyle(
                    fontSize: 11.0,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).primaryColor.withOpacity(0.5),
                  ),
                ),
              ],
            ),
            activeIcon: Column(
              children: [
                Icon(
                  Icons.settings,
                  color: Theme.of(context).primaryColor,
                ),
                Text(
                  "Settings",
                  style: TextStyle(
                    fontSize: 11.0,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              ],
            ),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
