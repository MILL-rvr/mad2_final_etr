import 'package:final_project/screen/about/about_Screen.dart';
import 'package:final_project/screen/career/career_Screen.dart';
import 'package:final_project/screen/game/game_SplashScreen.dart';
import 'package:final_project/screen/trivia/trivia_Screen.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
  
    //menu bar
    drawer: Drawer(
      child: Column(
        children: [
          Container(
            width: double.infinity, 
            height: 128, 
            child: DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.black87,
              ),
              child: Text(
                "Trabahula",
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text("Home"),
            onTap: () {
              Navigator.of(context).push(
              MaterialPageRoute(builder: 
              (context)=>HomeScreen()));
            },
          ),
          ListTile(
            leading: Icon(Icons.book),
            title: Text("Career"),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context)
                => CareerScreen())
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.quiz),
            title: Text("Game"),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context)
                => GameSplashscreen())
          );
        },
          ),
          ListTile(
            leading: Icon(Icons.star),
            title: Text("Trivia"),
            onTap: () {
              Navigator.of(context).push(
              MaterialPageRoute(builder: (context)=> TriviaScreen()));
            },
          ),
          ListTile(
            leading: Icon(Icons.info),
            title: Text("About"),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context)=>AboutScreen())
              );
            },
          ),
        ],
      ),
    ),
    
    //app bar
    appBar: AppBar(
        title: Text("Home",),
        backgroundColor: Colors.black87,
      ),

    //body
    body: Padding(padding: EdgeInsets.all(10),
    child: SingleChildScrollView(
      child: Column(
        children: [

    //Career
      GestureDetector(
        onTap: () {
          Navigator.of(context).push(
                MaterialPageRoute(builder: (context)
                => CareerScreen())
          );
        },
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(28),
                image: DecorationImage(
                  image: AssetImage('assets/images/career.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.5),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(28),
                    bottomRight: Radius.circular(28),
                  ),
                ),
                child: Text(
                  "Career",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),

    Gap(10),
    //Game
      GestureDetector(
        onTap: () {
          Navigator.of(context).push(
                MaterialPageRoute(builder: (context)
                => GameSplashscreen())
          );
        },
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(28),
                image: DecorationImage(
                  image: AssetImage('assets/images/game.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.5),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(28),
                    bottomRight: Radius.circular(28),
                  ),
                ),
                child: Text(
                  "Game",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),

    Gap(10),
    //Trivia
      GestureDetector(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context)=> TriviaScreen()));
        },
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(28),
                image: DecorationImage(
                  image: AssetImage('assets/images/trivia.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.5),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(28),
                    bottomRight: Radius.circular(28),
                  ),
                ),
                child: Text(
                  "Trivia",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),

    Gap(10),
    //ABOUT
      GestureDetector(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context)=>AboutScreen()));
        },
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(28),
                image: DecorationImage(
                  image: AssetImage('assets/images/about.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.5),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(28),
                    bottomRight: Radius.circular(28),
                  ),
                ),
                child: Text(
                  "About",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),

    ],
        ),
      ),
    ),
  );
  }
}