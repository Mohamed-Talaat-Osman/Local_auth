
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:local_auth_talaat/screens/local_auth_screen.dart';
import 'package:sizer/sizer.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static const String title = 'Local Auth';

  @override
  Widget build(BuildContext context) {
   return Sizer(
     builder: (context, orientation, deviceType) {
       return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: title,
          home: LocalAuthScreen(),
        );
     }
   );
  }
}
