import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PlaylistTrade extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Roadmap - Trade'),
      ),
      body: ListView(
        padding: EdgeInsets.all(20.0),
        children: [
          SizedBox(height: 20.0),
          CourseCard(
            title: 'Day Trade do ZERO',
            description:
                'Day Trade aula zero. Muitas pessoas me perguntam como começar no day trade. Resolvi fazer um curso grátis day trade do zero passo a passo. É um vídeo para iniciantes, mas acredito que possa ajudar a frisas questões importantes mesmo para quem já tem alguma experiência.',
            instructor: 'Caio Caúla',
            onPressed: () {
              context.push('/auladaytrade');
            },
          ),
          SizedBox(height: 20.0),
          CourseCard(
            title: 'Swing Trading Crash Course',
            description:
                'Swing trading is a great way for students or people who are busy with a regular 9-7 job, to make some side income.',
            instructor: 'Humbled Trader',
            onPressed: () {
              context.push('/aulaSwingTrade');
            },
          ),
        ],
      ),
    );
  }

  void _navigateToCourseDetails(BuildContext context, String title,
      String description, String instructor) {
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => CourseDetailsScreen(
              title: title, description: description, instructor: instructor)),
    );
  }
}

class CourseCard extends StatelessWidget {
  final String title;
  final String description;
  final String instructor;
  final VoidCallback onPressed;

  const CourseCard({
    Key? key,
    required this.title,
    required this.description,
    required this.instructor,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.0),
            Text(
              description,
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 8.0),
            Text(
              'Instrutor: $instructor',
              style: TextStyle(fontSize: 14.0),
            ),
            SizedBox(height: 8.0),
            ElevatedButton(
              onPressed: onPressed,
              child: Text('Iniciar'),
            ),
          ],
        ),
      ),
    );
  }
}

class CourseDetailsScreen extends StatelessWidget {
  final String title;
  final String description;
  final String instructor;

  const CourseDetailsScreen(
      {Key? key,
      required this.title,
      required this.description,
      required this.instructor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16.0),
            Text(
              description,
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 16.0),
            Text(
              'Instrutor: $instructor',
              style: TextStyle(fontSize: 14.0),
            ),
          ],
        ),
      ),
    );
  }
}
