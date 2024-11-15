import 'package:flutter_modular/flutter_modular.dart';

import '../../views/landing_page.dart';
import '../../views/prideaPage.dart';


class Navigation extends Module {
  static const String prideaPage= '/prideaPage';


  @override
  void routes(r) {

    r.child(Modular.initialRoute,
        child: (_) => const OnBoardingPage(),
        transition: TransitionType.fadeIn,
        duration: const Duration(milliseconds: 500));
    r.child(prideaPage,
        child: (_) => const PrideaPage(),
        transition: TransitionType.fadeIn,
        duration: const Duration(milliseconds: 500));

  }
}
