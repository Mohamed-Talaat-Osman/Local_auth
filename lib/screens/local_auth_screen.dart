
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../main.dart';
import '../services/local_auth_service.dart';
import '../widgets/default_button.dart';
import 'home_screen.dart';

class LocalAuthScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) =>
      Scaffold(
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
                Image(
                  image: AssetImage('assets/image.png',),
                  width: 50.w,
                ),
                SizedBox(
                    height: 10.h
                ),
                DefaultButton(
                  text: "Authenticate",
                  bgColor: Colors.blueAccent,
                  textColor: Colors.white,
                  onClicked: () async {
                    final isAuthenticated = await LocalAuthApi.authenticate();
                    if (isAuthenticated) {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => HomePage()),
                      );
                    } else {
                      print("error");
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      );
}