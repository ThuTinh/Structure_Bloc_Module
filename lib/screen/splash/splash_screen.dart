import 'dart:async';

import 'package:flutter/material.dart';
import 'package:package_info/package_info.dart';
import 'package:shared/shared.dart';
import 'package:template_bloc/screen/home/home_screen.dart';

class SplashScreen extends StatefulWidget {
  static const routeName = "/splash";
  @override
  State<StatefulWidget> createState() {
    return _SplashScreen();
  }
}

class _SplashScreen extends State<SplashScreen> {
  Future<String> _getversion() async {
    final PackageInfo info = await PackageInfo.fromPlatform();
    return info.version ?? '1.0.0';
  }

  _startSplashScreen() async {
    final _duration = Duration(seconds: 2);
    return Timer(_duration, _navigationPage);
  }

  _navigationPage() {
    Navigator.of(context)
        .pushNamedAndRemoveUntil(HomeScreen.routeName, (route) => false);
  }

  @override
  void initState() {
    _startSplashScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Center(
              child: SizedBox(
                height: Sizes.width(context) / 3,
                width: Sizes.width(context) / 3,
                child: Image.asset(
                  ImageAssets.iconSplash,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: FutureBuilder<String>(
                future: _getversion(),
                builder: (context, snapshot) {
                  String version = "";
                  if (snapshot.hasData) {
                    version = "v ${snapshot.data}";
                  }
                  return Container(
                    margin: EdgeInsets.only(bottom: Sizes.dp30(context)),
                    child: Text(
                      version,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
