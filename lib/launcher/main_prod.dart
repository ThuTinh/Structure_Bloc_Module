import 'package:bloc/bloc.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:template_bloc/launcher/app_config.dart';
import 'package:template_bloc/launcher/main_app.dart';

main(List<String> args) {
  Bloc.observer = CubitObserver();
  FlavorConfig.appFlavor = Flavor.PRODUCTION;
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MainApp());
}
