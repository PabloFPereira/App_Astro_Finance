import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class InfoUsuario extends StatelessWidget {
  const InfoUsuario({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Informações do Usuário'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'images/professorbonado.png',
              width: 250, // Ajuste o tamanho da imagem conforme necessário
            ),
            SizedBox(height: 20), // Adiciona espaço entre a imagem e o botão
            ElevatedButton(
              onPressed: () {
                context.go('/login'); // Redireciona para a página de login
              },
              child: Text('Sair'),
            ),
          ],
        ),
      ),
    );
  }
}
