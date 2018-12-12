import 'package:flutter/material.dart';

import 'auth.dart';
import 'data/contract.dart';
import 'package:badminton/calendar.dart';


void main() => runApp(new BadmintonBookingApp());

class BadmintonBookingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: BadStrings.appTitle,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Root(auth: Auth()),
    );
  }
}

enum AuthStatus { notSignedIn, signedIn }


class Root extends StatefulWidget {
  Root({Key key, this.auth}) : super(key: key);

  final BaseAuth auth;

  @override
  State<Root> createState() => _RootState();
}

class _RootState extends State<Root> {

  AuthStatus status = AuthStatus.notSignedIn;


  @override
  void initState() {
    super.initState();
    widget.auth.currentUser().then((id) {
      setState(() {
        status = id == null ? AuthStatus.signedIn : AuthStatus.signedIn;
        //todo : for debugging mode only, until sign-in is implemented
      });
    });
  }

  void _changeStatus(AuthStatus newStatus) {
    setState(() {
      status = newStatus;
    });
  }

  @override
  Widget build(BuildContext context) {
    switch (status) {
      case AuthStatus.notSignedIn:
        return CalendarPage(); //
      case AuthStatus.signedIn:
        return CalendarPage();
      default:
        return CalendarPage();
    }
  }
}
