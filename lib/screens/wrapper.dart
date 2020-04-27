import 'package:calculadora1/models/user.dart';
import 'package:calculadora1/screens/auth/auth.dart';
import 'package:calculadora1/screens/home/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);

    // return either home or auth widget
    if (user == null) {
      return Auth();
    } else {
      return Home();
    }
  }
}
