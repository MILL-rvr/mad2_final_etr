import 'package:final_project/screen/home/home_Screen.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'dart:ui';
import 'package:just_audio/just_audio.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final AudioPlayer player = AudioPlayer();
  bool isPlaying = false;

  @override
  void dispose() {
    player.dispose(); 
    super.dispose();
  }

  Future<void> _togglePlayer() async {
    if (isPlaying) {
      await player.pause();
    } else {
      await player.setAsset('assets/audio/consume.mp3');
      await player.play();
    }
    setState(() {
      isPlaying = !isPlaying;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Trabahula"),
        backgroundColor: Colors.black87,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _togglePlayer,
        backgroundColor: Colors.black87,
        child: Icon(
          isPlaying ? Icons.pause : Icons.play_arrow,
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
            child: Container(
              color: Colors.black.withOpacity(0.1),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 180,
                  height: 180,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(28),
                    image: DecorationImage(
                      image: AssetImage('assets/images/logo.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Gap(10),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => HomeScreen(),
                      ),
                    );
                  },
                  child: Text("Explore"),
                ),
                Gap(10),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
