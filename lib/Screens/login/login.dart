import "package:flutter/material.dart";
import "package:go_router/go_router.dart";

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
            child: Center(
                child: Column(children: [
          // logo
          Image.asset(
            'images/astro.png',
            width: 250,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              'Email',
              style: TextStyle(
                color: Colors.grey.shade200,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 7.5),
            child: Container(
              color: Color.fromARGB(157, 53, 53, 53),
              child: TextField(
                style: TextStyle(
                    color: Colors.grey.shade200,
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
                decoration: InputDecoration(
                  hintText: 'Digite seu e-mail',
                  hintStyle: TextStyle(
                    color: Colors.grey.shade400,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colors.grey.shade800,
                      width: 2,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      width: 2,
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              'Senha',
              style: TextStyle(
                color: Colors.grey.shade200,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 7.5),
            child: Container(
              color: Color.fromARGB(157, 53, 53, 53),
              child: TextField(
                style: TextStyle(
                    color: Colors.grey.shade200,
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
                decoration: InputDecoration(
                  hintText: 'Digite sua Senha',
                  hintStyle: TextStyle(
                    color: Colors.grey.shade400,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colors.grey.shade800,
                      width: 2,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      width: 2,
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 3),
          TextButton(
            onPressed: () {
              context.push('/esqueci-minha-senha');
            },
            child: const Text('Esqueci minha senha'),
          ),
          SizedBox(height: 25),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 65),
            child: GestureDetector(
              onTap: () {
                context.go('/quiz');
              },
              child: Container(
                alignment: Alignment.center,
                width: 250,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      Color(0xffe09b01),
                      Color(0xffe09b01),
                    ],
                  ),
                ),
                child: Text(
                  'Entrar',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 12),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Não tem Cadastro ?',
                  style: TextStyle(
                    color: Colors.grey.shade400,
                    fontSize: 16,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    context.push('/cadastro');
                  },
                  child: const Text('Criar Cadastro'),
                ),
              ],
            ),
          ),
        ]))));
  }
}
