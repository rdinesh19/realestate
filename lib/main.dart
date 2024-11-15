import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'component/initializer/main_initialization.dart';
import 'component/initializer/provider_initializer.dart';
import 'component/navigation/navigation.dart';
import 'myApp.dart';

Future<void> main() async {
  await mainInitialization();
  runApp(ModularApp(
    module: Navigation(),
    child: ProviderInitialization(
      child:  ProviderScope(
        child: MyApp(
                 ),
      )
    ),
  ));
}
