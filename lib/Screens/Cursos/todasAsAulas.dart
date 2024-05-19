import 'package:flutter/material.dart';

class TodasAsAulas extends StatefulWidget {
  @override
  _TodasAsAulasState createState() => _TodasAsAulasState();
}

class _TodasAsAulasState extends State<TodasAsAulas> {
  final List<String> aulas = [
    'Introdução',
    'Aula 1: Fundamentos',
    'Aula 2: Análise Técnica',
    'Aula 3: Análise Fundamentalista',
    'Aula 4: Estratégias Avançadas',
  ];

  final Map<String, bool> aulasConcluidas = {
    'Introdução': false,
    'Aula 1: Fundamentos': false,
    'Aula 2: Análise Técnica': false,
    'Aula 3: Análise Fundamentalista': false,
    'Aula 4: Estratégias Avançadas': false,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Todas as Aulas'),
      ),
      body: ListView.builder(
        itemCount: aulas.length,
        itemBuilder: (context, index) {
          String aula = aulas[index];
          return Card(
            margin: EdgeInsets.all(8.0),
            child: ListTile(
              title: Row(
                children: [
                  Expanded(
                    child: TextButton(
                      onPressed: () {
                        // Navegação para a aula específica
                      },
                      child: Text(
                        aula,
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ),
                  Checkbox(
                    value: aulasConcluidas[aula],
                    onChanged: (bool? value) {
                      setState(() {
                        aulasConcluidas[aula] = value ?? false;
                      });
                    },
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: TodasAsAulas(),
  ));
}
