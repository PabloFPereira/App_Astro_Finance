import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: QuizScreen(),
    );
  }
}

class QuizScreen extends StatefulWidget {
  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int score = 0;

  List<Map<String, dynamic>> questions = [
    {
      'question': 'O que é uma ação?',
      'options': [
        'A) Uma forma de empréstimo para uma empresa',
        'B) Propriedade em uma empresa',
        'C) Um tipo de conta de poupança',
        'D) Não sei responder'
      ],
      'answerIndex': 1, // Índice da opção correta na lista de opções
    },
    {
      'question': 'O que é um título de renda fixa?',
      'options': [
        'A) Um investimento que paga uma taxa fixa de retorno',
        'B) Um investimento que pode perder valor',
        'C) Um investimento em uma empresa',
        'D) Não sei responder'
      ],
      'answerIndex': 0,
    },
    {
      'question': 'O que é um fundo de investimento?',
      'options': [
        'A) Uma conta bancária especial',
        'B) Uma coleção de ações, títulos ou outros ativos',
        'C) Uma forma de seguro',
        'D) Não sei responder'
      ],
      'answerIndex': 1,
    },
    {
      'question': 'O que significa diversificação em investimentos?',
      'options': [
        'A) Investir tudo em uma única ação',
        'B) Distribuir investimentos entre diferentes tipos de ativos',
        'C) Comprar apenas títulos do governo',
        'D) Não sei responder'
      ],
      'answerIndex': 1,
    },
    {
      'question': 'O que é um índice da bolsa de valores?',
      'options': [
        'A) Uma medida do desempenho de uma seção específica do mercado de ações',
        'B) Uma lista de todas as ações disponíveis para compra',
        'C) Um sistema para rastrear o preço das ações individuais',
        'D) Não sei responder'
      ],
      'answerIndex': 0,
    },
  ];

  int currentQuestionIndex = 0;

  void checkAnswer(int selectedIndex) {
    if (selectedIndex == questions[currentQuestionIndex]['answerIndex']) {
      setState(() {
        score++;
      });
    }
    goToNextQuestion();
  }

  void goToNextQuestion() {
    setState(() {
      if (currentQuestionIndex < questions.length - 1) {
        currentQuestionIndex++;
      } else {
        // Navegar para a tela inicial quando todas as perguntas forem respondidas
        GoRouter.of(context)
            .go('/resultado', extra: {'score': score.toString()});
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Astro'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Pergunta ${currentQuestionIndex + 1}:',
              style: TextStyle(fontSize: 20.0),
            ),
            SizedBox(height: 10.0),
            Text(
              questions[currentQuestionIndex]['question'],
              style: TextStyle(fontSize: 18.0),
            ),
            SizedBox(height: 20.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: List.generate(
                questions[currentQuestionIndex]['options'].length,
                (index) => Column(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          checkAnswer(index);
                        },
                        child: Text(
                          questions[currentQuestionIndex]['options'][index],
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    SizedBox(height: 10.0), // Espaço entre os botões
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
