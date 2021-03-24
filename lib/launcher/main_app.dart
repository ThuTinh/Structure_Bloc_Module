import 'package:flutter/material.dart';
import 'package:shared/shared.dart';
import 'package:template_bloc/launcher/app_config.dart';
import 'package:template_bloc/screen/home/home_screen.dart';
import 'package:template_bloc/screen/splash/splash_screen.dart';

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _buildMainApp(context);
  }

  Widget _buildMainApp(BuildContext context) {
    return MaterialApp(
      title: FlavorConfig.title,
      theme: Themes.linghtTheme,
      home: Scaffold(
        appBar: AppBar(),
        body: Container(
          child: Center(
            child: Text("Hello"),
          ),
        ),
      ),
      initialRoute: SplashScreen.routeName,
      routes: {
        SplashScreen.routeName: (context) => SplashScreen(),
        HomeScreen.routeName: (context) => HomeScreen(),
      },
    );
  }
}
