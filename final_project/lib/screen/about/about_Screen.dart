import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About",),
        backgroundColor: Colors.black87,
    ),
    body: Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Container(
            width: 180,
            height: 180,
            decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(28),
            image: DecorationImage(
            image: AssetImage('assets/images/logo.png'),
            fit: BoxFit.cover,),),),
            Gap(20),
            Text("Trabahula is an entertaining and educational game in which users guess various occupations and discover fascinating details about them. It helps users or students, particularly those who are still undecided about their future career goals, discover various job alternatives. ", textAlign: TextAlign.justify, style: TextStyle(fontSize: 15,),),
            Gap(10),
            Text("Trabahula is a creative and engaging way of introducing students to a range of career alternatives, making the process of investigating possible career paths fun and engaging.  Young individuals, particularly those who are uncertain about their future, can learn about new careers entertainingly by combining career trivia with a guessing game.  Users can follow their learning offline and at any time using Hive to store progress.  This unique approach encourages students to consider their future jobs while having a good time, offering an enjoyable and educational setting for exploring various career options. ", textAlign: TextAlign.justify,style: TextStyle(fontSize: 15,),),
            Gap(10),
            Text("Created by: Keziah Millicent C. Rivera, 2025", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
        ],
      ),
    ),
    );
  }
}