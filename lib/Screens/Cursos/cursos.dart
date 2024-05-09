import 'package:astro_login/mock/curso_mock.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Cursos extends StatelessWidget {
  var _cursos = CursoMock.cursos;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cursos'),
      ),
      body: ListView(
        padding: EdgeInsets.all(20.0),
        children: [
          /* ListView.builder(
            itemCount: _cursos.length,
            shrinkWrap: true,
            itemBuilder: (context, index) => CourseCard(
              title: 'Curso de Introdução às Finanças Pessoais',
              description: 'Aprenda a gerenciar suas finanças de forma eficaz.',
              instructor: 'Kaisser',
              onPressed: () {
                context.go('curso-detalhes');
              },
            ),
          ),*/
          SizedBox(height: 20.0),
          CourseCard(
            title: 'Investimentos para Iniciantes',
            description:
                'Explore diferentes tipos de investimentos e estratégias.',
            instructor: 'Tiagro Nigro',
            onPressed: () {
              _navigateToCourseDetails(context, 'Investimentos para Iniciantes',
                  'Descrição do curso...', 'Tiagro Nigro');
            },
          ),
          SizedBox(height: 20.0),
          CourseCard(
            title: 'Análise Técnica de Ações',
            description:
                'Aprenda a analisar gráficos e identificar tendências do mercado de ações.',
            instructor: 'Bruno Perini',
            onPressed: () {
              context.push('/cursoAnaliseDeAcoes');
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
