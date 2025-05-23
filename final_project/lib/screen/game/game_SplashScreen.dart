import 'dart:ui';
import 'package:final_project/screen/home/home_Screen.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'game_MainScreen.dart';

class GameSplashscreen extends StatefulWidget {
  const GameSplashscreen({super.key});

  @override
  State<GameSplashscreen> createState() => _GameSplashscreenState();
}

class _GameSplashscreenState extends State<GameSplashscreen> {
  late Box box;
  int score = 0;
  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
    box = Hive.box('gameplayScore');
    _loadProgress();
  }

  void _loadProgress() {
    setState(() {
      score = box.get('score', defaultValue: 0);
      currentIndex = box.get('currentIndex', defaultValue: 0);
    });
  }

  void _resetProgress() {
    box.put('score', 0);
    box.put('currentIndex', 0);
    _loadProgress();
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Progress reset!')),
    );
  }

  @override
  Widget build(BuildContext context) {
    final displayScore = score == 10 ? 10 : score;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Game"),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context)=> HomeScreen())
            );
          },
        ),
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/images/background.png',
              fit: BoxFit.cover,
            ),
          ),
          Positioned.fill(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
              child: Container(
                color: Colors.black.withOpacity(0.1),
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Let's Trabahula!",
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall
                      ?.copyWith(color: Colors.white),
                ),
                const SizedBox(height: 20),
                Text(
                  "Your Score: $displayScore",
                  style: const TextStyle(color: Colors.white, fontSize: 20),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: 
                          (context)=> GameMainScreen())
                        );
                      },
                      child: Text(currentIndex == 0 ? "Start" : "Continue"),
                    ),
                    Gap(28),
                    ElevatedButton(
                      onPressed: _resetProgress,
                      child: const Text("Restart"),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
