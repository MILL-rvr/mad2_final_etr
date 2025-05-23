import 'dart:ui';
import 'package:final_project/model/games.dart';
import 'package:final_project/screen/game/game_splashscreen.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

class GameMainScreen extends StatefulWidget {
  const GameMainScreen({super.key});

  @override
  State<GameMainScreen> createState() => _GameMainScreenState();
}

class _GameMainScreenState extends State<GameMainScreen> {
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

  void _saveProgress() {
    box.put('score', score);
    box.put('currentIndex', currentIndex);
  }

  void _answerQuestion(String selectedAnswer) {
    if (selectedAnswer == gameQuestions[currentIndex].answer) {
      setState(() {
        score++;
      });
    }
    if (currentIndex < gameQuestions.length - 1) {
      setState(() {
        currentIndex++;
      });
    } else {
      showDialog(
        context: context,
        builder: (_) => AlertDialog(
          title: const Text('Game Finished!'),
          content: Text('Your final score is $score / ${gameQuestions.length}'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                setState(() {
                  currentIndex = 0;
                  score = 0;
                });
                _saveProgress();
                Navigator.of(context).push(MaterialPageRoute(builder: 
                (context)=> GameSplashscreen()));
              },
              child: const Text('OK'),
            ),
          ],
        ),
      );
      return;
    }
    _saveProgress();
  }

  @override
  Widget build(BuildContext context) {
    final currentGame = gameQuestions[currentIndex];
    final choices = currentGame.choices.split(',');

    return Scaffold(
      appBar: AppBar(
        title: const Text("Game"),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context)=> GameSplashscreen())
            );
          },
        ),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/images/background.png',
            fit: BoxFit.cover,
          ),
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
            child: Container(color: Colors.black.withOpacity(0.1)),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Score: $score",
                  style: const TextStyle(color: Colors.white, fontSize: 22),
                ),
                const SizedBox(height: 24),
                Text(
                  currentGame.question,
                  style: const TextStyle(color: Colors.white, fontSize: 20),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 24),
                ...choices.map((choice) => Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: ElevatedButton(
                        onPressed: () => _answerQuestion(choice),
                        child: Text(choice),
                      ),
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
