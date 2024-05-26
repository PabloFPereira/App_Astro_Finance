import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PlaylistBanco extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            Text('Roadmap - Como Escolher o Melhor Banco e a Melhor Corretora'),
      ),
      body: ListView(
        padding: EdgeInsets.all(20.0),
        children: [
          SizedBox(height: 20.0),
          CourseCard(
            title: 'Onde investir seu dinheiro?',
            description:
                'Eu falei sobre as diferenças entre Nubank, Inter e XP, e como cada um deles pode ser uma opção interessante dependendo do seu perfil de investidor. Mas calma, não vou contar tudo aqui, porque quero que você assista ao vídeo completo para entender melhor.',
            instructor: 'Nathalia Arcuri',
            onPressed: () {
              context.push('/aulaondeinvestir');
            },
          ),
          SizedBox(height: 20.0),
          CourseCard(
            title: 'Quais os Melhores Bancos de 2024',
            description:
                'análise completa dos resultados dos maiores bancos do Brasil e vou te mostrar em quais eu investiria. Será que os bancos digitais como Nubank e Inter estão realmente superando os grandes bancos? Ou será que o Itaú e o Banco do Brasil seguem à frente? Descubra quem está nadando em lucro, quem está crescendo mais rápido e quem está ficando para trás nessa corrida.',
            instructor: 'Economista Sincero',
            onPressed: () {
              context.push('/aulamelhorbanco');
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
