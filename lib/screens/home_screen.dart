
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../main.dart';
import '../widgets/default_button.dart';
import 'local_auth_screen.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(
            MyApp.title,
            style: TextStyle(
              color: Colors.black87,
            ),
          ),
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
        ),
        body: Padding(
          padding: EdgeInsets.all(32),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Home',
                  style: TextStyle(fontSize: 40),
                ),
                SizedBox(height: 10.h),
                DefaultButton(
                  text: 'Logout',
                  textColor: Colors.white,
                  bgColor: Colors.redAccent,
                  onClicked: () => Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => LocalAuthScreen()),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
}
