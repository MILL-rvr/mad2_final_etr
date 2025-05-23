import 'package:final_project/model/trivias.dart';
import 'package:flutter/material.dart';

class TriviaScreen extends StatefulWidget {
  const TriviaScreen({super.key});

  @override
  State<TriviaScreen> createState() => _TriviaScreenState();
}

class _TriviaScreenState extends State<TriviaScreen> {

  void _showTriviaContent(BuildContext context, Trivias trivia) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(trivia.title),
        content: Text(trivia.content),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Close'),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Trivia"),
        backgroundColor: Colors.black87,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView.builder(
          itemCount: trivia.length,
          itemBuilder: (BuildContext context, int index) {
            final currentTrivia = trivia[index];
            return Card(
              child: ListTile(
                title: Text(currentTrivia.title),
                onTap: () => _showTriviaContent(context, currentTrivia),
              ),
            );
          },
        ),
      ),
    );
  }
}
