import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hive/hive.dart';
import 'package:timers_app/model/user_model.dart';
import 'package:timers_app/pages/assessment_page.dart';
import 'package:timers_app/pages/cover_page.dart';
import 'package:timers_app/pages/home_page.dart';
import 'package:timers_app/pages/login_page.dart';
import 'package:timers_app/pages/quizzes_page.dart';
import 'package:timers_app/pages/register_page.dart';
import 'package:timers_app/pages/treatment_page.dart';
import 'package:timers_app/pages/tutorial_page.dart';
import 'pages/I/treatment_inflamacao_page.dart';
import 'pages/I/cover_inflamacao_page.dart';
import 'pages/I/inflamacao_avaliacao.dart';
import 'pages/I/quizz_i_page.dart';
import 'pages/M/cover_umidade.dart';
import 'pages/M/treatment_umidade.dart';
import 'pages/M/umidade_avaliacao.dart';
import 'pages/M/quizz_m_page.dart';
import 'pages/E/bordas_avaliacao.dart';
import 'pages/E/cover_bordas_page.dart';
import 'pages/E/treatment_bordas.dart';
import 'pages/E/quizz_e_page.dart';
import 'pages/R/cover_regeneracao.dart';
import 'pages/R/regeneracao_avaliacao.dart';
import 'pages/R/treatment_regeneracao.dart';
import 'pages/S/fatoressociais_avaliacao.dart';
import 'pages/S/treatment_fatoressociais.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(UserAdapter());
  await Hive.openBox<User>("users");
  await  Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: 'Nunito Sans',
      ),
      debugShowCheckedModeBanner: false,
     
      initialRoute: '/',
      routes: {
        "/" : (context) => LoginPage(),
        "/quizzes" : (context) => QuizzesPage(),
        "/login" : (context) => LoginPage(),
        "/tutorial" : (context) => TutorialPage(),
        "/register" : (context) => RegisterPage(),
        "/home" : (context) => HomePage(),
        '/assessment' : (context) => AssessmentPage(),
        '/treatment' : (context) => TreatmentPage(),
        '/cover' : (context) => CoverPage(),
        '/avaliacaoinflamacao' : (context) => InflamacaoAvaliacao(),
        '/treatmentinflamacao' : (context) => TreatmentInflamacaoPage(),
        '/coverinflamacao' : (context) => CoverInflamacaoPage(),
        '/coverumidade' : (context) => CoverUmidade(),
        '/avaliacaoumidade' : (context) => UmidadeAvaliacao(),
        '/treatmentumidade' : (context) => TreatmentUmidadePage(),
        '/quizzUmidade' : (context) => QuizzMPage(),
        '/quizzInflamacao' : (context) => QuizzIPage(),
        '/avaliacaobordas' : (context) => BordasAvaliacao(),
        '/treatmentbordas' : (context) => TreatmentBordasPage(),
        '/quizzBordas' : (context) => QuizzEPage(),
        '/coverbordas' : (context) => CoverBordasPage(),
        '/avaliacaoregeneracao' : (context) => RegeneracaoAvaliacao(),
        '/treatmentregeneracao' : (context) => TratamentoRegeneracaoPage(),
        '/coverregeneracao' : (context) => CoverRegeneracao(),
        '/avaliacaofatores' : (context) => FatoresSociaisAvaliacao(),
        '/treatmentfatores' : (context) => TratamentoFatoresSociaisPage()
      },
    );
  }
}


