import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'screens/splash_screen.dart';
import 'utils/getx_dependencies.dart';



void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.light, // For Android (dark icons)
    statusBarBrightness: Brightness.dark,
  ));
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(const BitcoinTicker());
  });
}

class BitcoinTicker extends StatelessWidget {
  const BitcoinTicker({super.key});

  
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: SplashScreen(),
      initialBinding: InitialBinding(),
    );
  }
}