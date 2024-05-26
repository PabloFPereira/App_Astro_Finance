import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PlaylistEconomia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Roadmap - Como Funciona o Dinheiro'),
      ),
      body: ListView(
        padding: EdgeInsets.all(20.0),
        children: [
          SizedBox(height: 20.0),
          CourseCard(
            title: 'Como funciona a economia?',
            description:
                'Economia é a ciência que estuda a produção, consumo e distribuição de bens essenciais para a vida humana e a melhoria da qualidade de vida. Entender como o governo controla essa ciência é fundamental para a compreensão dos rumos da economia e de como isso afeta a população.',
            instructor: 'Bruno Perrucho',
            onPressed: () {
              context.push('/aulaeconomia');
            },
          ),
          SizedBox(height: 20.0),
          CourseCard(
            title: 'Apenda a Organizar suas Finanças',
            description:
                'PLANILHA DE ORGANIZAÇÃO FINANCEIRA GRÁTIS - Aprenda a organizar suas finanças!',
            instructor: 'Eduardo Feldberg',
            onPressed: () {
              context.push('/aulaorganizacaofin');
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
