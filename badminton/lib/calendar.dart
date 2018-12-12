import 'package:flutter/material.dart';
import 'data/contract.dart';
import 'auth.dart';

class CalendarPage extends StatefulWidget {

  final BaseAuth auth;

  CalendarPage({Key key, this.auth});

  @override
  State<CalendarPage> createState() => _CalendarPageState();
}


class _CalendarPageState extends State<CalendarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: _bottomBar(),
    );
  }

  Widget _bottomBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.calendar_today, size: BadSizes.navBarIcons,),
          title: Text(
            BadStrings.calendarNavBarTitle,
            style: BadStyles.navBarStyle,
          ),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.sort, size: BadSizes.navBarIcons,),
          title: Text(
            BadStrings.reportsNavBarTitle,
            style: BadStyles.navBarStyle,
          ),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_outline, size: BadSizes.navBarIcons,),
          title: Text(
            BadStrings.crmNavBarTitle,
            style: BadStyles.navBarStyle,
          ),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings, size: BadSizes.navBarIcons,),
          title: Text(
            BadStrings.settingsNavBarTitle,
            style: BadStyles.navBarStyle,
          ),
        ),
      ],
    );
  }
}

