import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class resultado extends StatelessWidget {
  final int score;

  const resultado({
    Key? key,
    required this.score,
  }) : super(key: key);

  String determinarTipoInvestidor(int score) {
    if (score >= 0 && score <= 2) {
      return 'Iniciante';
    } else if (score >= 3 && score <= 4) {
      return 'Intermediário';
    } else {
      return 'Avançado';
    }
  }

  @override
  Widget build(BuildContext context) {
    String tipoInvestidor = determinarTipoInvestidor(score);

    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Parabéns! Você completou o quiz da Astro Finance.',
                style: TextStyle(fontSize: 24.0),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 40.0), // Adiciona espaçamento entre os textos
              Text(
                'Dentro de nossos parâmetros você é considerado um investidor $tipoInvestidor.',
                style: TextStyle(fontSize: 20.0),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20.0), // Adiciona espaço entre o texto e o botão
              ElevatedButton(
                onPressed: () {
                  context.go('/home');
                },
                child: Text('Avançar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
