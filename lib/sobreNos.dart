import 'package:flutter/material.dart';

class sobreNos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sobre Nós'),
        // Adiciona um botão de voltar no canto superior esquerdo da AppBar
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop(); // Fecha a tela atual
          },
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Quem Somos',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20.0),
            Text(
              'O Astro Finance é uma equipe apaixonada por finanças e investimentos. Nosso objetivo é tornar o mundo dos investimentos acessível e compreensível para todos, independentemente do seu nível de conhecimento financeiro.',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 40.0),
            Text(
              'Nossa Missão',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20.0),
            Text(
              'Nossa missão é capacitar indivíduos a tomar decisões financeiras informadas, fornecendo educação e recursos de alta qualidade sobre investimentos e gerenciamento financeiro pessoal.',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 40.0),
            Text(
              'Entre em Contato',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20.0),
            Text(
              'Se você tiver alguma dúvida, feedback ou apenas quiser dizer olá, não hesite em nos contatar em contato@astrofinance.com.',
              style: TextStyle(fontSize: 16.0),
            ),
          ],
        ),
      ),
    );
  }
}
