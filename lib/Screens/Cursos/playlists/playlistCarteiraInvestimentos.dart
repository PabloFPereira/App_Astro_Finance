import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PlaylistCarteiraInvest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Roadmap - Carteiras de Investimento'),
      ),
      body: ListView(
        padding: EdgeInsets.all(20.0),
        children: [
          SizedBox(height: 20.0),
          CourseCard(
            title:
                'Como montar uma Carteira de Investimentos para Iniciantes (Na Pratica)',
            description:
                'Imagine Warren Buffett investindo seu primeiro 114 dolares na Cities Service, Ray Dalio iniciando com 300 dolares na Northeast Airlines, e Luiz Barsi, construindo sua fortuna a partir de 500 dolares por mês em ações da Anderson Clayton.',
            instructor: 'Tiagro Nigro',
            onPressed: () {
              context.push('/aulacarteirainvest1');
            },
          ),
          SizedBox(height: 20.0),
          CourseCard(
            title: 'Como Montar uma Boa Carteira de Investimento - Analise',
            description:
                'Uma carteira de investimentos precisa ser equilibrada e conversar diretamente com os seus objetivos de curto, médio e longo prazos.',
            instructor: 'Gustavo Cerbasi',
            onPressed: () {
              context.push('/aulacarteirainvest2');
            },
          ),
          SizedBox(height: 20.0),
          CourseCard(
            title:
                'Como Criar uma carteira de investimentos com ações, FIIs e Renda Fixa ?',
            description:
                'A maioria dos investidores iniciantes fica empolgada com a ideia de investir, mas não sabe por onde começar. E isso acaba fazendo muita gente investir do jeito errado e perder dinheiro na Bolsa de Valores. Por isso, no vídeo de hoje, decidi fazer uma coisa diferente. Preparei uma aula bem completa para te ensinar, do zero, como montar uma carteira de investimentos.',
            instructor: 'Investidor Sardinha - Raul Sena',
            onPressed: () {
              context.push('/aulacarteirainvest3');
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
