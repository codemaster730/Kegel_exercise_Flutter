import 'package:flutter/material.dart';
import '../generated/l10n.dart';
import '../models/language.dart';
import '../repository/settings_repository.dart' as settingRepo;

class SettingWidget extends StatefulWidget {
  final GlobalKey<ScaffoldState> parentScaffoldKey;
  const SettingWidget({
    Key key,
    this.parentScaffoldKey,
  }) : super(key: key);
  @override
  _SettingWidgetState createState() => _SettingWidgetState();
}

enum Gender {
  Male,
  Female,
}

enum Themes {
  Blue,
  Purple,
  Green,
  Pink,
}

class _SettingWidgetState extends State<SettingWidget> {
  bool isReminder = true;
  bool isVibrate = true;
  bool isVoice = true;
  Gender gend = Gender.Male;
  Themes them = Themes.Pink;
  String themeColor = 'Pink';
  List<AlarmReminderWidget> reminders = [];

  LanguagesList languagesList;

  @override
  void initState() {
    languagesList = new LanguagesList();
    //reminders.add(new AlarmReminderWidget());
    switch (settingRepo.setting.value.mainColor.value) {
      case 4284790262:
        themeColor = 'Blue';
        break;
      case 4290406600:
        themeColor = 'Purple';
        break;
      case 4286695300:
        themeColor = 'Green';
        break;
      case 4293943954:
        themeColor = 'Pink';
        break;
    }
    super.initState();
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
            S.of(context).settings,
            style: Theme.of(context).textTheme.headline1,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        child: Column(children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            decoration: BoxDecoration(
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
                  leading: Icon(
                    Icons.shield,
                    color: Colors.red[400],
                  ),
                  title: Text(
                    //S.of(context).profile_settings,
                    'Remove Ads',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  trailing: RaisedButton(
                    onPressed: () {},
                    textColor: Colors.white,
                    padding: const EdgeInsets.all(0.0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    child: Container(
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: <Color>[
                              Theme.of(context).primaryColor.withAlpha(170),
                              Theme.of(context).primaryColor.withAlpha(200),
                              Theme.of(context).primaryColor.withAlpha(255),
                            ],
                          ),
                          borderRadius:
                              BorderRadius.all(Radius.circular(10.0))),
                      padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                      child:
                          const Text('\$2.99', style: TextStyle(fontSize: 20)),
                    ),
                  ),
                ),
                ListTile(
                  onTap: () {},
                  dense: true,
                  title: Text(
                    'Upgrade to remove ads',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(20),
                  height: 50,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      //side: BorderSide(color: Colors.red),
                    ),
                    onPressed: () {},
                    color: Color(0xFFFCEFF3),
                    textColor: Theme.of(context).primaryColor,
                    child: Text("Why I see ads", //.toUpperCase(),
                        style: TextStyle(fontSize: 18)),
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
                  leading: Icon(
                    Icons.access_alarm_rounded,
                    color: Colors.yellow[900],
                  ),
                  title: Text(
                    //S.of(context).profile_settings,
                    'Reminders',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  trailing: Switch(
                    value: isReminder,
                    onChanged: (value) {
                      setState(() {
                        isReminder = value;
                        print(isReminder);
                      });
                    },
                    activeTrackColor:
                        Theme.of(context).primaryColor.withOpacity(0.5),
                    activeColor: Theme.of(context).primaryColor,
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.all(Radius.circular(10.0))),
                  padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
                  child: Text(
                      'Doing Kegel exercises 3 times a day can achieve the best results.',
                      style: isReminder
                          ? Theme.of(context).textTheme.subtitle1
                          : Theme.of(context).textTheme.subtitle1.merge(
                              TextStyle(color: Colors.black.withOpacity(0.6)))),
                ),
                ListTile(
                  onTap: () {},
                  leading: Icon(
                    Icons.alarm_on,
                    size: 30,
                    color: Colors.black,
                  ),
                  title: Text(
                    //S.of(context).profile_settings,
                    '08:00 AM',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  trailing: Icon(
                    Icons.delete_forever,
                    size: 30,
                    color: Colors.grey,
                  ),
                ),
                // Container(
                // child:  ListView.builder(
                //   itemCount: reminders.length,
                //   itemBuilder: (context, index) {
                //     return reminders[index];
                //   },
                // ),
                // Flexible(
                //   flex: 1,
                //   child: new ListView.builder(
                //     itemCount: reminders.length,
                //     itemBuilder: (_, index) => reminders[index],
                //   ),
                // ),
                // ),
                Container(
                  margin: EdgeInsets.all(20),
                  height: 50,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      //side: BorderSide(color: Colors.red),
                    ),
                    onPressed: isReminder
                        ? () => {
                              //reminders.add(new AlarmReminderWidget())
                              print("asdf")
                            }
                        : null,
                    color: Color(0xFFFCEFF3),
                    textColor: Theme.of(context).primaryColor,
                    child: Text("+ Add reminder", //.toUpperCase(),
                        style: TextStyle(fontSize: 18)),
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
                  leading: Icon(
                    Icons.volume_up,
                    color: Theme.of(context).primaryColor,
                  ),
                  title: Text(
                    //S.of(context).profile_settings,
                    'Sound options',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 5, vertical: 15),
                      width: 140,
                      decoration: BoxDecoration(
                        color: Theme.of(context).backgroundColor,
                        borderRadius: BorderRadius.circular(26),
                      ),
                      child: Column(
                        children: [
                          Padding(padding: EdgeInsets.only(top: 20.0)),
                          CircleAvatar(
                            backgroundImage: AssetImage(
                                "assets/img/vector_setting_vibration_pink.png"),
                            radius: 35,
                          ),
                          Padding(padding: EdgeInsets.only(top: 10.0)),
                          Text(
                            //S.of(context).profile_settings,
                            'Vibration',
                            style: Theme.of(context).textTheme.subtitle1,
                          ),
                          Switch(
                            value: isVibrate,
                            onChanged: (value) {
                              setState(() {
                                isVibrate = value;
                                print(isVibrate);
                              });
                            },
                            activeTrackColor:
                                Theme.of(context).primaryColor.withOpacity(0.5),
                            activeColor: Theme.of(context).primaryColor,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                      width: 140,
                      decoration: BoxDecoration(
                        color: Theme.of(context).backgroundColor,
                        borderRadius: BorderRadius.circular(26),
                      ),
                      child: Column(
                        children: [
                          Padding(padding: EdgeInsets.only(top: 20.0)),
                          CircleAvatar(
                            backgroundImage: AssetImage(
                                "assets/img/vector_setting_voice_pink.png"),
                            radius: 35,
                          ),
                          Padding(padding: EdgeInsets.only(top: 10.0)),
                          Text(
                            //S.of(context).profile_settings,
                            'Voice guide',
                            style: Theme.of(context).textTheme.subtitle1,
                          ),
                          Switch(
                            value: isVoice,
                            onChanged: (value) {
                              setState(() {
                                isVoice = value;
                                print(isVoice);
                              });
                            },
                            activeTrackColor:
                                Theme.of(context).primaryColor.withOpacity(0.5),
                            activeColor: Theme.of(context).primaryColor,
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
                  leading: Icon(
                    Icons.settings,
                    color: Colors.grey,
                  ),
                  title: Text(
                    //S.of(context).profile_settings,
                    'General settings',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ),
                ListTile(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return SimpleDialog(
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 20),
                            titlePadding: EdgeInsets.symmetric(
                                horizontal: 15, vertical: 20),
                            title: Row(
                              children: <Widget>[
                                Icon(Icons.select_all_rounded),
                                SizedBox(width: 10),
                                Text(
                                  'Select Theme',
                                  style: Theme.of(context).textTheme.bodyText1,
                                )
                              ],
                            ),
                            children: <Widget>[
                              ListTile(
                                onTap: () {
                                  settingRepo.setting.value.mainColor.value =
                                      Colors.blue[300].value;
                                  settingRepo.setTheme(Colors.blue[300].value);
                                  settingRepo.setting.notifyListeners();
                                  Navigator.pop(context);
                                },
                                leading: Stack(
                                  children: [
                                    CircleAvatar(
                                      backgroundImage: AssetImage(
                                          "assets/img/bg_learn_card1_blue.png"),
                                      radius: 45,
                                    ),
                                  ],
                                ),
                                title: Text('Blue'),
                              ),
                              SizedBox(height: 10),
                              ListTile(
                                onTap: () {
                                  settingRepo.setting.value.mainColor.value =
                                      Colors.purple[300].value;
                                  settingRepo
                                      .setTheme(Colors.purple[300].value);
                                  settingRepo.setting.notifyListeners();
                                  Navigator.pop(context);
                                },
                                leading: Stack(
                                  children: [
                                    CircleAvatar(
                                      backgroundImage: AssetImage(
                                          "assets/img/bg_learn_card1_purple.png"),
                                      radius: 45,
                                    ),
                                  ],
                                ),
                                title: Text('Purple'),
                              ),
                              SizedBox(height: 10),
                              ListTile(
                                onTap: () {
                                  settingRepo.setting.value.mainColor.value =
                                      Colors.green[300].value;
                                  settingRepo.setTheme(Colors.green[300].value);
                                  settingRepo.setting.notifyListeners();
                                  Navigator.pop(context);
                                },
                                leading: Stack(
                                  children: [
                                    CircleAvatar(
                                      backgroundImage: AssetImage(
                                          "assets/img/bg_learn_card1_green.png"),
                                      radius: 45,
                                    ),
                                  ],
                                ),
                                title: Text('Green'),
                              ),
                              SizedBox(height: 10),
                              ListTile(
                                onTap: () {
                                  settingRepo.setting.value.mainColor.value =
                                      Colors.pink[300].value;
                                  settingRepo.setTheme(Colors.pink[300].value);
                                  settingRepo.setting.notifyListeners();
                                  Navigator.pop(context);
                                },
                                leading: Stack(
                                  children: [
                                    CircleAvatar(
                                      backgroundImage: AssetImage(
                                          "assets/img/bg_learn_card1_pink.png"),
                                      radius: 45,
                                    ),
                                  ],
                                ),
                                title: Text('Pink'),
                              ),
                              SizedBox(height: 10),
                            ],
                          );
                        });
                  },
                  dense: false,
                  title: Text(
                    'Theme',
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                  trailing: Wrap(
                    spacing: 12, // space between two icons
                    children: <Widget>[
                      Icon(
                        Icons.panorama_wide_angle_select,
                        color: Theme.of(context).primaryColor,
                      ), // icon-1
                      Text(
                        themeColor,
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                      Icon(
                        Icons.navigate_next,
                        color: Colors.black,
                      ), // icon-2
                    ],
                  ),
                ),
                ListTile(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return SimpleDialog(
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 20),
                            titlePadding: EdgeInsets.symmetric(
                                horizontal: 15, vertical: 20),
                            title: Row(
                              children: <Widget>[
                                //Icon(Icons.restore),
                                SizedBox(width: 10),
                                Text(
                                  'Select Gender',
                                  style: Theme.of(context).textTheme.bodyText1,
                                )
                              ],
                            ),
                            children: <Widget>[
                              RadioListTile<Gender>(
                                title: const Text('Male'),
                                value: Gender.Male,
                                groupValue: gend,
                                onChanged: (Gender value) {
                                  setState(() {
                                    gend = value;
                                  });
                                  Navigator.pop(context);
                                },
                              ),
                              RadioListTile<Gender>(
                                title: const Text('Female'),
                                value: Gender.Female,
                                groupValue: gend,
                                onChanged: (Gender value) {
                                  setState(() {
                                    gend = value;
                                  });
                                  Navigator.pop(context);
                                },
                              ),
                              SizedBox(height: 10),
                            ],
                          );
                        });
                  },
                  dense: false,
                  title: Text(
                    'Gemder',
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                  trailing: Wrap(
                    spacing: 12, // space between two icons
                    children: <Widget>[
                      Text(
                        (gend == Gender.Male ? 'Male' : 'Female'),
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                      Icon(
                        Icons.navigate_next,
                        color: Colors.black,
                      ), // icon-2
                    ],
                  ),
                ),
                ListTile(
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                                contentPadding:
                                    EdgeInsets.symmetric(horizontal: 20),
                                titlePadding: EdgeInsets.symmetric(
                                    horizontal: 15, vertical: 20),
                                title: Row(
                                  children: <Widget>[
                                    //Icon(Icons.restore),
                                    SizedBox(width: 10),
                                    Text(
                                      'Select Language',
                                      style:
                                          Theme.of(context).textTheme.bodyText1,
                                    )
                                  ],
                                ),
                                content: Container(
                                  height:
                                      500.0, // Change as per your requirement
                                  width:
                                      300.0, // Change as per your requirement
                                  child: ListView.separated(
                                    scrollDirection: Axis.vertical,
                                    shrinkWrap: true,
                                    primary: false,
                                    itemCount: languagesList.languages.length,
                                    separatorBuilder: (context, index) {
                                      return SizedBox(height: 10);
                                    },
                                    itemBuilder: (context, index) {
                                      Language _language = languagesList
                                          .languages
                                          .elementAt(index);
                                      settingRepo
                                          .getDefaultLanguage(settingRepo
                                              .setting
                                              .value
                                              .mobileLanguage
                                              .value
                                              .languageCode)
                                          .then((_langCode) {
                                        print("current language:" + _langCode);
                                        if (_langCode == _language.code) {
                                          setState(() {
                                            _language.selected = true;
                                          });
                                        }
                                      });
                                      return InkWell(
                                        onTap: () async {
                                          var _lang = _language.code.split("_");
                                          if (_lang.length > 1)
                                            settingRepo.setting.value
                                                    .mobileLanguage.value =
                                                new Locale(_lang.elementAt(0),
                                                    _lang.elementAt(1));
                                          else
                                            settingRepo.setting.value
                                                    .mobileLanguage.value =
                                                new Locale(_lang.elementAt(0));
                                          settingRepo.setting.notifyListeners();
                                          languagesList.languages.forEach((_l) {
                                            setState(() {
                                              _l.selected = false;
                                            });
                                          });
                                          _language.selected =
                                              !_language.selected;
                                          print("lang code:" + _language.code);
                                          settingRepo.setDefaultLanguage(
                                              _language.code);
                                          Navigator.pop(context);
                                        },
                                        child: Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 20, vertical: 8),
                                          decoration: BoxDecoration(
                                            color: Theme.of(context)
                                                .primaryColor
                                                .withOpacity(0.1),
                                            boxShadow: [
                                              BoxShadow(
                                                  color: Theme.of(context)
                                                      .focusColor
                                                      .withOpacity(0.1),
                                                  blurRadius: 5,
                                                  offset: Offset(0, 2)),
                                            ],
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: <Widget>[
                                              Stack(
                                                alignment:
                                                    AlignmentDirectional.center,
                                                children: <Widget>[
                                                  Container(
                                                    height: 40,
                                                    width: 40,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.all(
                                                              Radius.circular(
                                                                  40)),
                                                      image: DecorationImage(
                                                          image: AssetImage(
                                                              _language.flag),
                                                          fit: BoxFit.cover),
                                                    ),
                                                  ),
                                                  Container(
                                                    height: _language.selected
                                                        ? 40
                                                        : 0,
                                                    width: _language.selected
                                                        ? 40
                                                        : 0,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.all(
                                                              Radius.circular(
                                                                  40)),
                                                      color: Theme.of(context)
                                                          .accentColor
                                                          .withOpacity(
                                                              _language.selected
                                                                  ? 0.85
                                                                  : 0),
                                                    ),
                                                    child: Icon(
                                                      Icons.check,
                                                      size: _language.selected
                                                          ? 24
                                                          : 0,
                                                      color: Theme.of(context)
                                                          .primaryColor
                                                          .withOpacity(
                                                              _language.selected
                                                                  ? 0.85
                                                                  : 0),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(width: 15),
                                              Expanded(
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: <Widget>[
                                                    Text(
                                                      _language.englishName,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      maxLines: 2,
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .subtitle1,
                                                    ),
                                                    Text(
                                                      _language.localName,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      maxLines: 2,
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .caption,
                                                    ),
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                ));
                          });
                    },
                    dense: false,
                    title: Text(
                      'Language options',
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                    trailing: Wrap(
                      children: [
                        Text(
                            languagesList.getLangCodeToEngName(settingRepo
                                .setting
                                .value
                                .mobileLanguage
                                .value
                                .languageCode),
                            style: Theme.of(context).textTheme.subtitle1),
                        Icon(
                          Icons.navigate_next,
                          color: Colors.black,
                        ),
                      ],
                    )),
                ListTile(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return SimpleDialog(
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 20),
                            titlePadding: EdgeInsets.symmetric(
                                horizontal: 15, vertical: 20),
                            title: Row(
                              children: <Widget>[
                                Icon(Icons.restore),
                                SizedBox(width: 10),
                                Text(
                                  'Reset progress',
                                  style: Theme.of(context).textTheme.bodyText1,
                                )
                              ],
                            ),
                            children: <Widget>[
                              Text('Do you want to reset progress?'),
                              SizedBox(height: 20),
                              Row(
                                children: <Widget>[
                                  MaterialButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    //child: Text(S.of(context).cancel),
                                    child: Text('No'),
                                  ),
                                  MaterialButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: Text(
                                      'Yes',
                                      style: TextStyle(
                                          color: Theme.of(context).accentColor),
                                    ),
                                  ),
                                ],
                                mainAxisAlignment: MainAxisAlignment.end,
                              ),
                              SizedBox(height: 10),
                            ],
                          );
                        });
                  },
                  dense: false,
                  title: Text(
                    'Reset progress',
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                  trailing: Icon(
                    Icons.navigate_next,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            decoration: BoxDecoration(
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
                  leading: Icon(
                    Icons.email,
                    color: Colors.yellow[700],
                  ),
                  title: Text(
                    //S.of(context).profile_settings,
                    'Contact Us',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ),
                ListTile(
                  onTap: () {
                    print("tatp");
                  },
                  dense: false,
                  title: Text(
                    'Privacy policy',
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                  trailing: Icon(
                    Icons.navigate_next,
                    color: Colors.black,
                  ),
                ),
                ListTile(
                  onTap: () {
                    print("tatp");
                  },
                  dense: false,
                  title: Text(
                    'Rate us',
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                  trailing: Icon(
                    Icons.navigate_next,
                    color: Colors.black,
                  ),
                ),
                ListTile(
                  onTap: () {
                    print("tatp");
                  },
                  dense: false,
                  title: Text(
                    'Feedback',
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                  trailing: Icon(
                    Icons.navigate_next,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}

class AlarmReminderWidget extends StatefulWidget {
  AlarmReminderWidget({Key key}) : super(key: key);

  @override
  _AlarmReminderWidgetState createState() => _AlarmReminderWidgetState();
}

class _AlarmReminderWidgetState extends State<AlarmReminderWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        onTap: () {},
        leading: Icon(
          Icons.alarm_on,
          size: 30,
          color: Colors.black,
        ),
        title: Text(
          //S.of(context).profile_settings,
          '08:00 AM',
          style: Theme.of(context).textTheme.headline6,
        ),
        trailing: Icon(
          Icons.delete_forever,
          size: 30,
          color: Colors.grey,
        ),
      ),
    );
  }
}
