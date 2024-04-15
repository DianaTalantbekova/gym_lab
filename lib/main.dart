import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym_labb/src/app.dart';

import 'di.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  setUpDependencies();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitDown,
    DeviceOrientation.portraitUp,
  ]);

  runApp(
    ScreenUtilInit(
      designSize: const Size(430, 932),
      builder: (BuildContext context, Widget? child) => const MyApp(),
    ),
  );
}
