import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';
import 'package:timers_app/boxes.dart';
import 'package:timers_app/model/tutorial_model.dart';
import 'package:timers_app/pages/tutorial_page.dart';
import 'package:timers_app/widgets/acronym_card.dart';
import 'package:timers_app/widgets/inflamacao_card.dart';
import 'package:timers_app/widgets/umidade_card.dart';
import 'package:timers_app/widgets/bordas_card.dart';
import 'package:timers_app/widgets/regeneration_card.dart';
import 'package:timers_app/widgets/social_factors_card.dart';
import 'package:timers_app/pages/chat.dart';
import 'package:timers_app/pages/references.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  String name = "";
  int t_points = 0;
  int i_points = 0;
  int m_points = 0;
  int e_points = 0;
  int r_points = 0;
  int s_points = 0;
  final GlobalKey<ScaffoldState> _drawerKey = GlobalKey();


  @override
  void initState() {
    final box = Boxes.getUsers();
    setState(() {
      name = box.getAt(box.length-1).nome;
      t_points = box.getAt(box.length-1).pontosT;
    });
    
    super.initState();
  }

  




  @override
  Widget build(BuildContext context) {
    SnackBar snackBar;
    return Scaffold(
      key: _drawerKey,
      appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.menu, color: Colors.white,),
            alignment: Alignment.center,
            onPressed: () => _drawerKey.currentState.openDrawer(),
          ),
          iconTheme: IconThemeData(color: Colors.white),
          automaticallyImplyLeading: false,
          backgroundColor: Colors.blue[300],
          actions: [
            IconButton(
                icon: Icon(Icons.logout),
                alignment: Alignment.center,
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/');
                })
          ],
          centerTitle: true,
          elevation: 0,
          title: Text(
            "",
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
          ),
      ),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.lightBlue,
                shape: BoxShape.rectangle,
                image: DecorationImage(
                    image: AssetImage("asserts/Logo.png"),
                    fit: BoxFit.contain,

              ),

            ),
            ),
            SizedBox(height: 5,),
            ListTile(
              title: const Text('Instruções', style: TextStyle(fontWeight: FontWeight.bold),),
              subtitle: Text("Ainda não conhece o App?\nnão se preocupe, comece por aqui!", style: TextStyle(fontSize: 10),),
              leading: Icon(Icons.light_mode_outlined),
              trailing: Icon(Icons.arrow_forward_sharp),
              onTap: () => {
                Navigator.pop(context),
                Navigator.push(
                  context,
                  MaterialPageRoute (
                    builder: (context) => TutorialPage()
                  )
                )
              },

            ),            SizedBox(height: 20,),

            ListTile(
              title: const Text('Chat Público', style: TextStyle(fontWeight: FontWeight.bold),),
              subtitle: Text("Compartilhe seus conhecimentos\npara todos!", style: TextStyle(fontSize: 10),),
              trailing: Icon(Icons.arrow_forward_sharp),
              leading: Icon(Icons.message),
              onTap: () => {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ChatPage())
                )
              },
            ),
            SizedBox(height: 20,),
            ListTile(
              title: const Text('Referências', style: TextStyle(fontWeight: FontWeight.bold),),
              subtitle: Text("A base científica do aplicativo\nestá toda aqui, confira!", style: TextStyle(fontSize: 10),),
              trailing: Icon(Icons.arrow_forward_sharp),
              leading: Icon(Icons.assignment_sharp),
              onTap: () => {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ReferencesPage())
                )
              },
            ),
            SizedBox(height: 20,),

            ListTile(
              title: const Text('Fechar'),
              trailing: Icon(Icons.close),
              onTap: () {
                Navigator.pop(context);
              },
            ),

          ],
        ),
      ),
      body: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.9,
              width: MediaQuery.of(context).size.width,
              color: Colors.blue[300],
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 35),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child:
                              Text(
                                " Seja bem vindo ao Timers App",
                                style: TextStyle(
                                    fontSize: 17, color: Colors.white, fontWeight: FontWeight.bold),
                              ),
                        ),
                        SizedBox(height: 5,),
                        Container(
                          child: Padding(
                            padding: EdgeInsets.only(left: 5, top: 2, bottom: 2),
                            child: Row(
                              children: [
                                Text(
                                  name,
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                          )
                        )

                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.80,
              width: MediaQuery.of(context).size.width,
              decoration: new BoxDecoration(
                  color: Color(0xFFF3F3F5),
                  borderRadius: new BorderRadius.only(
                    topLeft: const Radius.circular(25.0),
                    topRight: const Radius.circular(25.0),
                  )),
              child: buildBody(),
            ),
          ),
        ],
      ),
    );
  }

  bool expanded = false;

  buildBody() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          children: [
            AcronymCard(
              backgroundIconColor: Colors.yellow[300],
              title: "T - Tecido",
              subtitle: "Objetivo: Limpar o leito da ferida, desbridar o tecido desvitalizado.",
              icon: AssetImage('asserts/new_t_icon.jpg'),
              points: t_points.toDouble(),
            ),
             InflamacaoCard(
              backgroundIconColor: Colors.blue[300],
              title: "I - Inflamação",
              subtitle: "Objetivo: Controlar a inflamação, infecção, Biofilme.",
              icon: AssetImage('asserts/new_i_icon.jpg'),
              points: i_points.toDouble(),
            ),

             UmidadeCard(
              backgroundIconColor: Colors.green[300],
              title:  "M - Umidade/exsudato",
              subtitle: "Objetivo: Controlar a umidade/exsudato da lesão.",
              icon: AssetImage('asserts/m_icon.png'),
              points: m_points.toDouble(),
            ),

            BordasCard(
              backgroundIconColor: Colors.red[300],
              title:  "E - Bordas",
              subtitle: "Objetivo: redução do tamanho da ferida, epitelização.",
              icon: AssetImage('asserts/aa.jpg'),
              points: e_points.toDouble(),
            ),

            RegeneracaoCard(
              backgroundIconColor: Colors.orange[300],
              title:  "R - Regeneração/Reparação",
              subtitle:"Objetivos: fechamento da ferida, reparo do tecido.",
              icon: AssetImage('asserts/r_icon.png'),
              points: r_points.toDouble(),
            ),

            FatoresSociaisCard(
              backgroundIconColor: Colors.black54,
              title:  "S -Fatores sociais",
              subtitle:"Objetivo: educação do paciente, família e cuidador; escuta ativa; compreensão do sistema de crenças.",
              icon: AssetImage('asserts/s_icon.png'),
              points: s_points.toDouble(),
            ),
            
          ],
        ),
      ),
    );
  }
}
