import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Astro Finance'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Bem-vindo ao Astro Finance',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20.0),
            Text(
              'Aprenda a investir e gerenciar suas finanças de forma inteligente.',
              style: TextStyle(fontSize: 18.0),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 40.0),
            ElevatedButton(
              onPressed: () {
                context.push('/cursos');
              },
              child: Text('Conheça nossos Roadmaps'),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                context.push('/sobrenos');
              },
              child: Text('Sobre nós'),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                context.push('/todasasaulas');
              },
              child: Text('Aulas'),
            ),
          ],
        ),
      ),
    );
  }
}
