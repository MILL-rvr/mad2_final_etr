import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'screen/home/splash_Screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await Hive.openBox('gameplayScore');
  await Hive.openBox('favorites');
  runApp(const FinalProject());
}

class FinalProject extends StatelessWidget {
  const FinalProject({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.yellow),
        useMaterial3: false,
      ),
      home: const SplashScreen(),
    );
  }
}
