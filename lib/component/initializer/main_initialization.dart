
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../constants/colors.dart';

mainInitialization()async{

  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown
  ]);
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor:ColorRes.lightDarkBlueColor,
    statusBarColor: Colors.transparent,
  ));

}