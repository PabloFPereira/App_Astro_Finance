import 'package:astro_login/Screens/Cursos/playlists/playlistCarteiraInvestimentos.dart';
import 'package:astro_login/Screens/Cursos/playlists/playlistEconomia.dart';
import 'package:astro_login/Screens/Cursos/playlists/playlistTrade.dart';
import 'package:astro_login/Screens/Cursos/playlists/playlistmelhoranco.dart';
import 'package:astro_login/data/aulas/carteiraDeInvestimentos1.dart';
import 'package:astro_login/data/aulas/carteiraDeInvestimentos2.dart';
import 'package:astro_login/data/aulas/carteiraDeInvestimentos3.dart';
import 'package:astro_login/data/aulas/daytrade.dart';
import 'package:astro_login/data/aulas/economia.dart';
import 'package:astro_login/data/aulas/melhorBanco.dart';
import 'package:astro_login/data/aulas/ondeInvestir.dart';
import 'package:astro_login/data/aulas/organizarFinancas.dart';
import 'package:astro_login/data/aulas/swingTrade.dart';
import 'package:astro_login/Screens/Cursos/cursos.dart';
import 'package:astro_login/Screens/paginasSecundarias/infoUsuario.dart';
import 'package:astro_login/Screens/paginasSecundarias/home.dart';
import 'package:astro_login/Screens/paginasSecundarias/sobreNos.dart';
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
      builder: (context, state) => Cursos(),
    ),
    // AULAS ---------------------------------------------------
    GoRoute(
      path: '/aulaSwingTrade',
      builder: (context, state) => SwingTrade(),
    ),
    GoRoute(
      path: '/auladaytrade',
      builder: (context, state) => DayTrade(),
    ),
    GoRoute(
      path: '/aulamelhorbanco',
      builder: (context, state) => MelhorBanco(),
    ),
    GoRoute(
      path: '/aulaondeinvestir',
      builder: (context, state) => OndeInvestir(),
    ),
    GoRoute(
      path: '/aulacarteirainvest3',
      builder: (context, state) => CarteiraInvestimentos3(),
    ),
    GoRoute(
      path: '/aulacarteirainvest2',
      builder: (context, state) => CarteiraInvestimentos2(),
    ),
    GoRoute(
      path: '/aulacarteirainvest1',
      builder: (context, state) => CarteiraInvestimentos1(),
    ),
    GoRoute(
      path: '/aulaeconomia',
      builder: (context, state) => Economia(),
    ),
    GoRoute(
      path: '/aulaorganizacaofin',
      builder: (context, state) => OrganizarFinancas(),
    ),
    // PLAYLISTS---------------------------------------------------
    GoRoute(
      path: '/playlistTrade',
      builder: (context, state) => PlaylistTrade(),
    ),
    GoRoute(
      path: '/playlistMelhorBanco',
      builder: (context, state) => PlaylistBanco(),
    ),
    GoRoute(
      path: '/playlisteconomia',
      builder: (context, state) => PlaylistEconomia(),
    ),
    GoRoute(
      path: '/playlistcarteirainvest',
      builder: (context, state) => PlaylistCarteiraInvest(),
    ),
//---------------------------------------------------------------------------
    GoRoute(
      path: '/quiz',
      builder: (context, state) => QuizScreen(),
    ),
    GoRoute(
      path: '/home',
      builder: (context, state) => HomeScreen(),
    ),
    GoRoute(
      path: '/infoUsuario',
      builder: (context, state) => InfoUsuario(),
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
