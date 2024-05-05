import 'package:astro_login/Screens/Cursos/cursos.dart';
import 'package:astro_login/Screens/home.dart';
import 'package:astro_login/Screens/sobreNos.dart';
import 'package:astro_login/Screens/login/createLogin.dart';
import 'package:astro_login/Screens/quiz/resultado.dart';
import 'package:astro_login/Screens/login/login.dart';
import 'package:astro_login/Screens/login/lostpassword.dart';
import 'package:astro_login/Screens/quiz/quizNivelamento.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/login',
      builder: (context, state) {
        var loginObj = const Login();

        return loginObj;
      },
    ),
    GoRoute(
      path: '/cadastro',
      builder: (context, state) => const createLogin(),
    ),
    GoRoute(
      path: '/esqueci-minha-senha',
      builder: (context, state) => const Lostpassword(),
    ),
    GoRoute(
      path: '/sobrenos',
      builder: (context, state) => sobreNos(),
    ),
    GoRoute(
      path: '/cursos',
      builder: (context, state) => cursos(),
    ),
    GoRoute(
      path: '/quiz',
      builder: (context, state) => QuizScreen(),
    ),
    GoRoute(
      path: '/home',
      builder: (context, state) => HomeScreen(),
    ),
    GoRoute(
      path: '/resultado',
      builder: (context, state) {
        // Verifica se state.extra não é nulo e é do tipo Map<String, dynamic>
        if (state.extra is Map<String, dynamic>) {
          // Obtém a pontuação como uma string
          final scoreString =
              (state.extra as Map<String, dynamic>?)?['score'] as String?;
          // Converte a pontuação para um inteiro
          final score = int.tryParse(scoreString ?? '0') ?? 0;
          return resultado(score: score);
        } else {
          // Se state.extra não for do tipo Map<String, dynamic>, retorna uma pontuação padrão de 0
          return resultado(score: 0);
        }
      },
    ),
  ],
  initialLocation: '/login',
);

void main() {
  var myAppObj = const MyApp();
  runApp(myAppObj);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      title: 'Astro',
      themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      theme: FlexThemeData.light(
        colors: const FlexSchemeColor(
          primary: Color(0xffcd9c11),
          primaryContainer: Color(0xffd6b24f),
          secondary: Color(0xffdfc98e),
          secondaryContainer: Color(0xffcd9c11),
          tertiary: Color(0xff006875),
          tertiaryContainer: Color(0xffdfc98e),
          appBarColor: Color(0xffcd9c11),
          error: Color(0xffb00020),
        ),
        surfaceMode: FlexSurfaceMode.levelSurfacesLowScaffold,
        blendLevel: 7,
        subThemesData: const FlexSubThemesData(
          blendOnLevel: 10,
          blendOnColors: false,
          useTextTheme: true,
          alignedDropdown: true,
          useInputDecoratorThemeInDialogs: true,
        ),
        useMaterial3ErrorColors: true,
        visualDensity: FlexColorScheme.comfortablePlatformDensity,
        useMaterial3: false,
      ),
      darkTheme: FlexThemeData.dark(
        colors: const FlexSchemeColor(
          primary: Color(0xffcd9c11),
          primaryContainer: Color(0xffd6b24f),
          secondary: Color(0xffdfc98e),
          secondaryContainer: Color(0xffcd9c11),
          tertiary: Color(0xff006875),
          tertiaryContainer: Color(0xffdfc98e),
          appBarColor: Color(0xffcd9c11),
          error: Color(0xffb00020),
        ).defaultError.toDark(10, true),
        surfaceMode: FlexSurfaceMode.levelSurfacesLowScaffold,
        blendLevel: 13,
        subThemesData: const FlexSubThemesData(
          blendOnLevel: 20,
          useTextTheme: true,
          alignedDropdown: true,
          useInputDecoratorThemeInDialogs: true,
        ),
        useMaterial3ErrorColors: true,
        visualDensity: FlexColorScheme.comfortablePlatformDensity,
        useMaterial3: false,
      ),
    );
  }
}
