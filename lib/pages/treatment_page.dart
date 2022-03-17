import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:timers_app/widgets/expandedCustom.dart';
import 'package:timers_app/widgets/expandedCustomColor.dart';
import 'package:animated_dialog_box/animated_dialog_box.dart';
import 'package:timers_app/pages/cover_page.dart';


class TreatmentPage extends StatefulWidget {
  @override
  _TreatmentPageState createState() => _TreatmentPageState();
}

class _TreatmentPageState extends State<TreatmentPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[300],
        title: Text("Tecido:\t\t\tTratamento", style: TextStyle(fontWeight: FontWeight.bold),),
      ),
      body: body(),
    );
  }

  colagenase(){
    AlertDialog screen = AlertDialog(
      content: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("asserts/tratamentos/Colagenase.jpg",
                height: 150,
                width: 200,
                fit: BoxFit.fill
            ),
            ExpandedCustom(
              Text(
                "Composição:",
                style:
                TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Colagenase, clostridiopeptidase A e enzimas proteolíticas.",
                    style: TextStyle(fontSize: 12),
                  ),

                ],
              ),
            ),
            ExpandedCustom(
              Text(
                "Indicação:",
                style:
                TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "- Desbridamento enzimático;",
                    style: TextStyle(fontSize: 12),
                  ),
                ],
              ),
            ),
            ExpandedCustom(
              Text(
                "Contraindicação:",
                style:
                TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "- Feridas com cicatrização por primeira intenção; pacientes com hipersensibilidade à Colagenase ou a qualquer componente da formulação.",
                    style: TextStyle(fontSize: 12),
                  ),



                ],
              ),
            ),
            ExpandedCustom(
              Text(
                "Periodicidade de troca:",
                style:
                TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
              ),
              Text(
                "A cada 24 horas;",
                style: TextStyle(fontSize: 12),
              ),
            ),

          ],
        ),
      ),

      actions: [
        RawMaterialButton(
          onPressed: () => setState(() => { Navigator.pop(context) }),
          elevation: 1.0,
          child: Text("Voltar"),
          padding: EdgeInsets.all(15.0),
          shape: CircleBorder(),
        )
      ],

    );

    showDialog(
        context: context,
        builder: (BuildContext context){
          return screen;
        }
    );
  }

  hidrofibras(){
    AlertDialog screen = AlertDialog(
      content: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("asserts/tratamentos/Hidrofibras.jpg",
                height: 150,
                width: 200,
                fit: BoxFit.fill
            ),
            ExpandedCustom(
              Text(
                "Composição:",
                style:
                TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Fibras de carboximetilcelulose hidrodesbridantes (ou fibras poliabsorventes); pode estar associado a 1,2% de prata iônica ou polímeros de poliacrilato de amônia envoltas em um núcleo acrílico.",
                    style: TextStyle(fontSize: 12),
                  ),

                ],
              ),
            ),
            ExpandedCustom(
              Text(
                "Indicação:",
                style:
                TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "-Feridas exsudativas de diversas etiologias; desbridamento autolítico; Abrasões, lacerações e cortes; Queimaduras de 2º grau e 3º grau após desbridamento cirúrgico e com exsudato.",
                    style: TextStyle(fontSize: 12),
                  ),
                ],
              ),
            ),
            ExpandedCustom(
              Text(
                "Contraindicação:",
                style:
                TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "-Não usar em necrose de coagulação; Feridas com pouca exsudação e uso limitado em feridas superficiais",
                    style: TextStyle(fontSize: 12),
                  ),


                ],
              ),
            ),
            ExpandedCustom(
              Text(
                "Periodicidade de troca:",
                style:
                TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
              ),
              Text(
                "Até 7 dias; Pode permanecer até 14 dias em casos de queimaduras; Trocar curativo secundário quando saturado ou em até 24 horas;",
                style: TextStyle(fontSize: 12),
              ),
            ),
          ],
        ),
      ),

      actions: [
        RawMaterialButton(
          onPressed: () => setState(() => { Navigator.pop(context) }),
          elevation: 1.0,
          child: Text("Voltar"),
          padding: EdgeInsets.all(15.0),
          shape: CircleBorder(),
        )
      ],

    );

    showDialog(
        context: context,
        builder: (BuildContext context){
          return screen;
        }
    );
  }

  iodo(){
    AlertDialog screen = AlertDialog(
      content: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("asserts/iodo_exdometro.jpg",
                height: 150,
                width: 200,
                fit: BoxFit.fill
            ),
            ExpandedCustom(
              Text(
                "Composição:",
                style:
                TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Pomada castanho-escuro estéril, composto por cadexômero (microgrânulos de amido modificado), polietilenoglicol, poloxâmero e iodo",
                    style: TextStyle(fontSize: 12),
                  ),

                ],
              ),
            ),
            ExpandedCustom(
              Text(
                "Indicação:",
                style:
                TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "- Tratamento tópico de feridas exsudativas crônicas. Pode ser usado sob terapia de compressão, pode ser utilizado em feridas infectadas. É ativo contra MRSA e atua prevenindo a formação do biofilme. Coberturas contendo cadexômero de iodo têm apresentado ação contra bactérias planctônicas e biofilmes bacterianos de S. aureus e P. aeureginosa.",
                    style: TextStyle(fontSize: 12),
                  ),
                ],
              ),
            ),
            ExpandedCustom(
              Text(
                "Contraindicação:",
                style:
                TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "- Tecidos necróticos secos ou em doentes com sensibilidade conhecida ao iodo ou a qualquer um dos seus componentes. Crianças, mulheres grávidas ou que estejam amamentando, pessoas que sofram de insuficiência renal ou com distúrbios da tiroide (ex: tiroidite de Hashimoto ou bócio nodular não-tóxico).",
                    style: TextStyle(fontSize: 12),
                  ),


                ],
              ),
            ),
            ExpandedCustom(
              Text(
                "Periodicidade de troca:",
                style:
                TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
              ),
              Text(
                "A cada duas a três vezes por semana. Trocas diárias podem ser necessárias caso a lesão libere grandes quantidades de exsudato. ",
                style: TextStyle(fontSize: 12),
              ),
            ),
          ],
        ),
      ),

      actions: [
        RawMaterialButton(
          onPressed: () => setState(() => { Navigator.pop(context) }),
          elevation: 1.0,
          child: Text("Voltar"),
          padding: EdgeInsets.all(15.0),
          shape: CircleBorder(),
        )
      ],

    );

    showDialog(
        context: context,
        builder: (BuildContext context){
          return screen;
        }
    );
  }

  hidropolimeros(){
    AlertDialog screen = AlertDialog(
      content: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("asserts/tratamentos/Espumas de poliuretano.jpg",
                height: 150,
                width: 200,
                fit: BoxFit.fill
            ),
            ExpandedCustom(
              Text(
                "Composição:",
                style:
                TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Almofada de espuma composta de camadas sobrepostas de não tecido e hidropolímero e revestida por poliuretano e silicone.",
                    style: TextStyle(fontSize: 12),
                  ),

                ],
              ),
            ),
            ExpandedCustom(
              Text(
                "Indicação:",
                style:
                TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "- Controle da umidade no leito da ferida. Quando adicionadas a substancias surfactantes e umectantes promovem desbridamento autolítico. Quando impregnadas com Prata ou PHMB promovem tratamento da infecção ou biofilme.",
                    style: TextStyle(fontSize: 12),
                  ),
                ],
              ),
            ),
            ExpandedCustom(
              Text(
                "Contraindicação:",
                style:
                TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "- Queimaduras de terceito grau; lesões com vasculite ativa; Necrose seca (Tecido desvitalizados), hipergranulação e feridas com pouca exsudação.",
                    style: TextStyle(fontSize: 12),
                  ),


                ],
              ),
            ),
            ExpandedCustom(
              Text(
                "Periodicidade de troca:",
                style:
                TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
              ),
              Text(
                "A cada sete dias ou sempre que houver presença de fluído da ferida nas bordas da espuma; As trocas variam dependendo da saturação do curativo. Trocar o curativo secundário sempre que saturado.",
                style: TextStyle(fontSize: 12),
              ),
            ),
          ],
        ),
      ),

      actions: [
        RawMaterialButton(
          onPressed: () => setState(() => { Navigator.pop(context) }),
          elevation: 1.0,
          child: Text("Voltar"),
          padding: EdgeInsets.all(15.0),
          shape: CircleBorder(),
        )
      ],

    );

    showDialog(
        context: context,
        builder: (BuildContext context){
          return screen;
        }
    );
  }

  telaDeSilicone(){
    AlertDialog screen = AlertDialog(
      content: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("asserts/tratamentos/tela de silicone.png",
                height: 150,
                width: 200,
                fit: BoxFit.fill
            ),
            ExpandedCustom(
              Text(
                "Composição:",
                style:
                TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
              ),
              Text(
                "Tela de poliamida com silicone suave, transparente.",
                style: TextStyle(fontSize: 12),
              ),
            ),
            ExpandedCustom(
              Text(
                "Mecanismo de ação:",
                style:
                TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "-Não aderente ao leito da ferida",
                    style: TextStyle(fontSize: 12),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    "-Não provoca dor a remoção",
                    style: TextStyle(fontSize: 12),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    "-Proporciona meio úmido",
                    style: TextStyle(fontSize: 12),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    "-Possibilita menor número de trocas de curativos",
                    style: TextStyle(fontSize: 12),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    "-Adapta-se aos contornos do corpo",
                    style: TextStyle(fontSize: 12),
                  ),
                ],
              ),
            ),
            ExpandedCustom(
              Text(
                "Indicação:",
                style:
                TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "-Epidermolise bolhosa",
                    style: TextStyle(fontSize: 12),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    "-Lesão por fricção",
                    style: TextStyle(fontSize: 12),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    "-Úlceras planas de diversas etiologias",
                    style: TextStyle(fontSize: 12),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    "-Áreas doadoras de enxerto cutâneo",
                    style: TextStyle(fontSize: 12),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    "-Áreas receptoras de enxerto cutâneo",
                    style: TextStyle(fontSize: 12),
                  ),
                ],
              ),
            ),
            ExpandedCustom(
              Text(
                "Contraindicação:",
                style:
                TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "-Feridas cavitárias",
                    style: TextStyle(fontSize: 12),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    "-Feridas infectadas",
                    style: TextStyle(fontSize: 12),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    "-Feridas com grande quantidade de exsudato",
                    style: TextStyle(fontSize: 12),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    "-Áreas doadoras de enxerto cutâneo",
                    style: TextStyle(fontSize: 12),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    "-Áreas receptoras de enxerto cutâneo",
                    style: TextStyle(fontSize: 12),
                  ),
                ],
              ),
            ),
            ExpandedCustom(
              Text(
                "Frequência de troca:",
                style:
                TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
              ),
              Text(
                "Pode permanecer por até 14 dias no leito da lesão.",
                style: TextStyle(fontSize: 12),
              ),
            ),
          ],
        ),
      ),

      actions: [
        RawMaterialButton(
          onPressed: () => setState(() => { Navigator.pop(context) }),
          elevation: 1.0,
          child: Text("Voltar"),
          padding: EdgeInsets.all(15.0),
          shape: CircleBorder(),
        )
      ],

    );

    showDialog(
        context: context,
        builder: (BuildContext context){
          return screen;
        }
    );
  }

  Hidrocoloide(){
    AlertDialog screen = AlertDialog(

      content: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset("asserts/tratamentos/hidrocoloide.jpg",
                  height: 150,
                  width: 200,
                  fit: BoxFit.fill
              ),
              ExpandedCustom(
                Text(
                  "Composição:",
                  style:
                  TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "-Camada externa de poliuretano",
                      style: TextStyle(fontSize: 12),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      "-Camada interna composta por gelatina pectina e carboximetilcelulose sódica",
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
              ),
              ExpandedCustom(
                Text(
                  "Indicação:",
                  style:
                  TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "-Tratamento de feridas abertas não infectadas com leve a moderada exsudação",
                      style: TextStyle(fontSize: 12),
                    ),
                    Text(
                      "-Feridas abertas não infectadas",
                      style: TextStyle(fontSize: 12),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      "-Prevenção de lesões por pressao",
                      style: TextStyle(fontSize: 12),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      "-Proteção da área perilesional e para efluentes de estomas",
                      style: TextStyle(fontSize: 12),
                    ),

                  ],
                ),
              ),
              ExpandedCustom(
                Text(
                  "Contraindicação:",
                  style:
                  TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "-Feridas muito exsudativas",
                      style: TextStyle(fontSize: 12),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      "-Feridas infectadas",
                      style: TextStyle(fontSize: 12),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      "-Feridas cavitárias",
                      style: TextStyle(fontSize: 12),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      "-Feridas com tecido desvitalizado ou necrose",
                      style: TextStyle(fontSize: 12),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      "-Queimaduras de terceiro grau",
                      style: TextStyle(fontSize: 12),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      "-Pacientes com sensibilidade aos componentes do produto",
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
              ),
              ExpandedCustom(
                Text(
                  "Frequência de troca:",
                  style:
                  TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                ),
                Text(
                  "A cada sete dias e/ou sempre que houver saturação ou deslocar",
                  style: TextStyle(fontSize: 12),
                ),
              ),
              ExpandedCustom(
                Text(
                  "Beneficios:",
                  style:
                  TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "-Mantém o meio úmido",
                      style: TextStyle(fontSize: 12),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      "-Promove o desbridamento autolítico",
                      style: TextStyle(fontSize: 12),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      "-Reduz o atrito e o microclima na prevenção de lesão por pressão",
                      style: TextStyle(fontSize: 12),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      "-Estimula a angiogênese",
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
              ),

            ],
          )
      ),
      actions: [
        RawMaterialButton(
          onPressed: () => setState(() => { Navigator.pop(context) }),
          elevation: 1.0,
          child: Text("Voltar"),
          padding: EdgeInsets.all(15.0),
          shape: CircleBorder(),
        )
      ],
    );

    showDialog(
        context: context,
        builder: (BuildContext context){
          return screen;
        }
    );
  }

  Hidrogel() {

       AlertDialog screen = AlertDialog(

         content: SingleChildScrollView(
           child: Column(
             children: [
               Image.asset("asserts/tratamentos/hidrogel.jpg",
                   height: 150,
                   width: 200,
                   fit: BoxFit.fill
               ),
               ExpandedCustom(
                 Text(
                   "Composição:",
                   style:
                   TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                 ),
                 Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Text(
                       "-Gel transparente incolor, composto por água (77,7%), carboximetilcelulose – CMC (2,3%) e propilenoglicol – PPG (20%)",
                       style: TextStyle(fontSize: 12),
                     ),

                   ],
                 ),
               ),
               ExpandedCustom(
                 Text(
                   "Indicação:",
                   style:
                   TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                 ),
                 Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Text(
                       "-Remover crostas e tecidos desvitalizados de feridas abertas",
                       style: TextStyle(fontSize: 12),
                     ),
                   ],
                 ),
               ),
               ExpandedCustom(
                 Text(
                   "Contraindicação:",
                   style:
                   TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                 ),
                 Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Text(
                       "- Utilizar em pele íntegra e incisões cirúrgicas fechadas.",
                       style: TextStyle(fontSize: 12),
                     ),


                   ],
                 ),
               ),
               ExpandedCustom(
                 Text(
                   "Frequência de troca:",
                   style:
                   TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                 ),
                 Text(
                   "Feridas infectadas (a cada 24 horas); necrose (a cada 72 horas).",
                   style: TextStyle(fontSize: 12),
                 ),
               ),

             ],
           )
         ),
         actions: [
           RawMaterialButton(
             onPressed: () => setState(() => { Navigator.pop(context) }),
             elevation: 1.0,
             child: Text("Voltar"),
             padding: EdgeInsets.all(15.0),
             shape: CircleBorder(),
           )
         ],
       );

       showDialog(
           context: context,
           builder: (BuildContext context){
             return screen;
           }
       );

  }


  AGE(){

    AlertDialog screen = AlertDialog(

      content: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset("asserts/tratamentos/AGE.jpg",
                height: 150,
                width: 200,
                fit: BoxFit.fill
            ),
            ExpandedCustom(
              Text(
                "Composição:",
                style:
                TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "-Óleo de origem vegetal composto pelos ácidos linoleico, linolenico, caprílico, caprico; vitaminaA, E + lectina de soja",
                    style: TextStyle(fontSize: 12),
                  ),

                ],
              ),
            ),
            ExpandedCustom(
              Text(
                "Indicação:",
                style:
                TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "-Queimaduras superficiais",
                    style: TextStyle(fontSize: 12),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    "-Úlceras de qualquer etiologia com ou sem infeção",
                    style: TextStyle(fontSize: 12),
                  ),
                ],
              ),
            ),
            ExpandedCustom(
              Text(
                "Contraindicação:",
                style:
                TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "-Hipergranulação",
                    style: TextStyle(fontSize: 12),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    "-Em casos de hipersensibilidade",
                    style: TextStyle(fontSize: 12),
                  ),

                ],
              ),
            ),
            ExpandedCustom(
              Text(
                "Frequência de troca:",
                style:
                TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
              ),
              Text(
                "Recomenda-se trocar no máximo a cada 24 horas ou sempre que o curativo secundário estiver saturado.",
                style: TextStyle(fontSize: 12),
              ),
            ),
            ExpandedCustom(
              Text(
                "Beneficios:",
                style:
                TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "-Mantém o meio úmido",
                    style: TextStyle(fontSize: 12),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    "-Promove o desbridamento autolítico",
                    style: TextStyle(fontSize: 12),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    "-Acelera o processo de granulação tecidual",
                    style: TextStyle(fontSize: 12),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    "-Auxilia o desbridamento autolitico",
                    style: TextStyle(fontSize: 12),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    "-Pode ser utilizado em qualquer fase de cicatrização",
                    style: TextStyle(fontSize: 12),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      actions: [
        RawMaterialButton(
          onPressed: () => setState(() => { Navigator.pop(context) }),
          elevation: 1.0,
          child: Text("Voltar"),
          padding: EdgeInsets.all(15.0),
          shape: CircleBorder(),
        )
      ],
    );

    showDialog(
        context: context,
        builder: (BuildContext context){
          return screen;
        }
    );
  }


  Widget body() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              "Lesões com tecido desvitalizado ou necrótico é recomendável realizar o desbridamento.",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16,),
            ),
            SizedBox(height: 10,),
            ExpandedCustomColor(
              Text(
                "Objetivos do desbridamento",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.blue),
              ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "•	Remover tecidos inviáveis",
                  ),
                  Text(
                    "•	Reduzir a carga bacteriana"
                  ),
                  Text(
                    "•	Preservar tecidos viáveis"
                  ),
                  Text(
                    "•	Preparar o leito da lesão para cicatrização"
                  )

                ],
              )
            ), Colors.blue
            ),
            SizedBox(height: 10,),
            ExpandedCustomColor(
                Text(
                    "Tipos de desbridamento",
                    style: TextStyle(fontWeight: FontWeight.bold, color: Colors.orange)
                ),
                Column(
                  children: [
                    ExpandedCustomColor(
                      Text("Desbridamento inicial ",
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14)
                      ),
                      Text("Consiste na retirada de tecidos inviáveis aderidos ao leito e/ou na área periferida, incluindo o tecido queratinizado, por meio de métodos autolíticos, enzimáticos, biológicos, mecânicos ou instrumentais, abrangendo as bordas da ferida e a pele.",
                      ),
                      Colors.cyan
                    ),
                    SizedBox(height: 10,),
                    ExpandedCustomColor(
                      Text("Desbridamento de manutenção",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                      ),
                      Text(
                        "Caracteriza-se pela contínua remoção da carga celular composta por fibroblastos envelhecidos, queratinócitos, materiais de matriz celular, não visíveis a olho nu e que necessitam ser permanentemente removidos para viabilizar a cicatrização. desbridamento de manutenção deve ser realizado, mesmo em face de um leito aparentemente saudável, se a ferida não está mostrando evidência de cicatrização.",

                      ),
                      Colors.lightGreen
                    )
                  ],
                ), Colors.orange
            ),
            SizedBox(height: 10,),
            ExpandedCustomColor(
                Text(
                  "Métodos de desbridamento",
                  style: TextStyle(fontWeight: FontWeight.bold, color: Colors.green),
                ),
                Column(
                  children: [
                    ExpandedCustomColor(
                        Text(
                          "Instrumental",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 14),
                        ),
                        Column(
                          children: [
                            Text(
                              "É realizado com material cortante, como lâminas de bisturi e tesouras. Procedimento realizado exclusivamente por médicos e enfermeiros, exige dos profissionais competência, conhecimento das estruturas anatômicas e dos riscos, segurança e habilidade.",
                              style: TextStyle(fontSize: 12),
                            ),
                            ExpandedCustom(
                              Text(
                                "Contraindicação:",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 12),
                              ),
                              Text(
                                "Insuficiência arterial e as coagulopatias.",
                                style: TextStyle(fontSize: 12),
                              ),
                            ),
                            ExpandedCustom(
                              Text(
                                "Riscos:",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 12),
                              ),
                              Text(
                                "Hemorragia, lesão de tendões e ossos",
                                style: TextStyle(fontSize: 12),
                              ),
                            ),
                          ],
                        ),
                      Colors.brown[300]
                    ),
                    SizedBox(height: 10,),
                    ExpandedCustomColor(
                        Text(
                          "Mecânico",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 14),
                        ),
                        Column(
                          children: [
                            Text(
                              "Método não seletivo, pois retira também o tecido viável. Pode ser realizado com a utilização das seguintes técnicas:",
                              style: TextStyle(fontSize: 12),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "- Fricção: realizada com gazes ou esponjas umedecidas em soluções de limpeza;",
                              style: TextStyle(fontSize: 12),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "- Úmido-seco: consiste em cobrir a ferida com gaze seca, aguardar que esta fique aderida ao leito para retirá-la;",
                              style: TextStyle(fontSize: 12),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "- Irrigação: realizada com soro morno em jato. Hidroterapia: realizada em tanques com turbilhonamento.",
                              style: TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                      Colors.red[300]
                    ),
                    SizedBox(height: 10,),
                    ExpandedCustomColor(
                        Text(
                          "Autolítico",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 14),
                        ),
                        Column(
                          children: [
                            Text(
                              "Desbridamento natural, estimula a ação de enzimas endógenas, como proteases e colagenases, e atividade macrofágica do próprio organismo. Mantém o meio úmido e temperatura de 37º, promovendo a quebra natural do tecido necrótico. Método atraumático.",
                              style: TextStyle(fontSize: 12),
                            ),
                            ExpandedCustom(
                                Text(
                                  "Desvantagem:",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12),
                                ),
                                Text(
                                  "Exige um tempo prolongado para o desbridamento.",
                                  style: TextStyle(fontSize: 12),
                                )),
                            ExpandedCustom(
                                Text(
                                  "Produtos:",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12),
                                ),
                                  Text.rich(
                                      TextSpan(
                                          children: [
                                            TextSpan(
                                              text: "Ácidos graxos essenciais, Hidrogéis, hidrocolóides, Hidrofibra, ",
                                              style: TextStyle(fontSize: 12)
                                            ),
                                            TextSpan(
                                                text: " Iodo Cadexómero",
                                                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                                                recognizer: TapGestureRecognizer() ..onTap = () async {
                                                  await iodo();
                                                }
                                            ),
                                            WidgetSpan(child: Icon(Icons.attach_file, size: 18,)),
                                            TextSpan(
                                                text: " hidropolímeros",
                                                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                                                recognizer: TapGestureRecognizer() ..onTap = () async {
                                                  await hidropolimeros();
                                                }
                                            ),
                                            WidgetSpan(child: Icon(Icons.attach_file, size: 18,)),
                                            TextSpan(text: "espumas hidrofílicas, coberturas antiaderentes.", style: TextStyle(fontSize: 12))
                                          ]
                                      )
                                  )

                                ),
                            ExpandedCustom(
                                Text(
                                  "Contraindicação:",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12),
                                ),
                                Text(
                                  "Não deve ser utilizado em feridas infectadas.  Pode levar ao maceramento da lesão.",
                                  style: TextStyle(fontSize: 12),
                                )),
                          ],
                        ), Colors.green[300]
                    ),
                    SizedBox(height: 10,),
                    ExpandedCustomColor(
                        Text(
                          "Enzimático",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 14),
                        ),
                        Text.rich(
                            TextSpan(
                                children: [
                                  TextSpan(
                                    text: "Escolha de enzimas exógenas para aplicação tópica baseada no tipo de tecido presente e pH da pele. Produtos: ",
                                    style: TextStyle(fontSize: 12),

                                  ),
                                  TextSpan(
                                      text: "Colagenase",
                                      style: TextStyle(fontWeight: FontWeight.bold),
                                      recognizer: TapGestureRecognizer() ..onTap = () async {
                                        await colagenase();
                                      }
                                  ),
                                  WidgetSpan(child: Icon(Icons.attach_file, size: 18,)),
                                  TextSpan(
                                    text: " (pH 6 a 8), fibrinolisina (pH 7 a 8), Papaína (pH 3 a 12)",
                                    style: TextStyle(fontSize: 12),
                                  ),
                                ]
                            )
                        ),
                      Colors.pink
                        ),
                    SizedBox(height: 10,),
                    ExpandedCustomColor(
                        Text(
                          "Biológico ou larval",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 14),
                        ),
                        Text(
                          "Consiste na utilização larvas de moscas esterilizadas das espécies  Lucilia sericata ou Phaenicia sericata colocadas no leito da ferida. Estas larvas secretam enzimas proteolíticas que digerem o tecido necrótico para ingerir o liquefeito. A terapia requer um tempo prolongado para o desbridamento e exige a disponibilidade das larvas.",
                          style: TextStyle(fontSize: 12),
                        ),
                      Colors.lime
                    ),
                  ],
                ), Colors.green
            ),
            SizedBox(height: 10,),
            ExpandedCustomColor(
              Text(
                  "Algoritmo",
                  style: TextStyle(fontWeight: FontWeight.bold, color: Colors.purple),
              ),
              Column(
                children: [
                  ExpandedCustomColor(
                    Text(
                        "Esfacelo seco aderido",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14)
                    ),
                    Column(
                      children: [
                        ExpandedCustom(
                            Text(
                                "Desbridamento inicial:",
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),

                            ),
                            Text(
                                "Fornecer umidade, desprender o esfacelo aderido ao leito.",
                                style: TextStyle(fontSize: 12)
                            )
                        ),
                        ExpandedCustom(
                          Text(
                              "Coberturas indicadas:",
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                          ),
                            Text.rich(
                                TextSpan(

                                     text: "Hidrogel / exógenas", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12), recognizer: TapGestureRecognizer() ..onTap = () async {
                                  await Hidrogel();
                                },
                                  children: [
                                    WidgetSpan(
                                      child: Icon(Icons.attach_file, size: 18),
                                    )
                                  ]
                                )
                            ),
                        ),
                      ],
                    ), Colors.brown[300]
                  ),
                  SizedBox(height: 10,),
                  ExpandedCustomColor(
                    Text(
                        "Esfacelo úmido",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14)
                    ),
                    Column(
                      children: [
                        ExpandedCustom(
                          Text("Desbridamento Inicial", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),),
                          Text("Controlar a umidade, remover esfacelo", style: TextStyle(fontSize: 12))
                        ),
                        ExpandedCustom(
                          Text("Coberturas recomendadas", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),),
                            Text.rich(
                                TextSpan(
                                children: [
                                TextSpan(text: "Fibras hidro-desbridantes/ fibras poliabsorventes, ", style: TextStyle(fontSize: 12)),
                                  TextSpan(
                                      text: "hidrofibras",
                                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                                      recognizer: TapGestureRecognizer() ..onTap = () async {
                                        await hidrofibras();
                                      }
                                  ),
                                  WidgetSpan(child: Icon(Icons.attach_file, size: 18,)),
                                TextSpan(
                                  text: "espumas e ",style: TextStyle(fontSize: 12)
                                ),
                                TextSpan(
                                    text: "iodo cadexômero",
                                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                                    recognizer: TapGestureRecognizer() ..onTap = () async {
                                      await iodo();
                                    }
                                ),
                                WidgetSpan(child: Icon(Icons.attach_file, size: 18,)),
                              ]
                            ),
                          ),
                        ),
                        ExpandedCustom(
                          Text("Desbridamento de manutenção", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),),
                          Text("Controlar a umidade e remover tecidos inviáveis presentes no leito e na área periferida.", style: TextStyle(fontSize: 12))
                        ),
                        ExpandedCustom(
                          Text("Coberturas recomendadas", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),),
                            Text.rich(
                                TextSpan(
                                    children: [
                                      TextSpan(text: "Fibras hidro-desbridantes/ fibras poliabsorventes, ", style: TextStyle(fontSize: 12)),
                                      TextSpan(
                                          text: "hidrofibras",
                                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                                          recognizer: TapGestureRecognizer() ..onTap = () async {
                                            await hidrofibras();
                                          }
                                      ),
                                      WidgetSpan(child: Icon(Icons.attach_file, size: 18,)),
                                      TextSpan(
                                        text: ", espumas e ", style: TextStyle(fontSize: 12)
                                      ),
                                      TextSpan(
                                          text: "iodo cadexômero",
                                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                                          recognizer: TapGestureRecognizer() ..onTap = () async {
                                            await iodo();
                                          }
                                      ),
                                      WidgetSpan(child: Icon(Icons.attach_file, size: 18,)),
                                    ]
                                )
                            )
                        )
                      ],
                    ),
                      Colors.redAccent
                  ),
                  SizedBox(height: 10,),
                  ExpandedCustomColor(
                      Text(
                          "Necrose de coagulação ou escara",
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14)
                      ),
                      Column(
                        children: [
                          ExpandedCustom(
                              Text("Desbridamento Inicial", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),),
                              Text("Remover o tecido necrótico seco e aderido ao leito da ferida.", style: TextStyle(fontSize: 12))
                          ),
                          ExpandedCustom(
                              Text("Coberturas recomendadas", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),),
                              Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "Hidrogel",
                                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                                      recognizer: TapGestureRecognizer() ..onTap = () async {
                                        await Hidrogel();
                                      }
                                    ),
                                    WidgetSpan(child: Icon(Icons.attach_file, size: 18,)),
                                    TextSpan(text: ", enzimas exógenas e instrumental cortante.", style: TextStyle(fontSize: 12))
                                  ]
                                )
                              )
                          ),
                          ExpandedCustom(
                              Text("Desbridamento de manutenção", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),),
                              Text("Controlar a umidade e remover tecidos inviáveis presentes no leito e na área periferida", style: TextStyle(fontSize: 12))
                          ),
                          ExpandedCustom(
                              Text("Coberturas recomendadas", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),),
                              Text.rich(
                                      TextSpan(
                                      children: [
                                      TextSpan(
                                          text: "Hidrogel",
                                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                                          recognizer: TapGestureRecognizer() ..onTap = () async {
                                            await Hidrogel();
                                          }
                                      ),
                                      WidgetSpan(child: Icon(Icons.attach_file, size: 18,)),
                                      TextSpan(text: ", enzimas exógenas e instrumental cortante.", style: TextStyle(fontSize: 12))
                                    ]
                                  )
                              )
                          )
                        ],
                      ), Colors.green
                  ),
                  SizedBox(height: 10,),
                  ExpandedCustomColor(
                      Text(
                          "Hiperqueratose",
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14)
                      ),
                      Column(
                        children: [
                          ExpandedCustom(
                              Text("Objetivo", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),),
                              Text("Manter a pele saudável.", style: TextStyle(fontSize: 12))
                          ),
                          ExpandedCustom(
                              Text("Medidas profiláticas", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),),
                              Text("Umectação diária.", style: TextStyle(fontSize: 12))
                          ),
                          ExpandedCustom(
                              Text("Tecnologia", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),),
                              Text("Retirar com delicadeza o tecido descamativo, após aplicação de creme emoliente.", style: TextStyle(fontSize: 12))
                          ),
                        ],
                      ),
                    Colors.cyan
                  ),
                  SizedBox(height: 10,),
                  ExpandedCustomColor(
                      Text(
                          "Hiperqueratose periferida neuropática",
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14)
                      ),
                      Column(
                        children: [
                          ExpandedCustom(
                              Text("Desbridamento instrumental", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),),
                              Text("Após aplicação de solução emoliente.", style: TextStyle(fontSize: 12))
                          )
                        ],
                      ),
                    Colors.lime
                  ),
                  SizedBox(height: 10,),
                  ExpandedCustomColor(
                      Text(
                          "Tecido de granulação",
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14)
                      ),
                      Column(
                        children: [
                          ExpandedCustom(
                              Text("Objetivo", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),),
                              Text("Manutenção do meio úmido.", style: TextStyle(fontSize: 12))
                          ),
                          ExpandedCustom(
                              Text("Coberturas recomendadas", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),),
                              Text.rich(
                                      TextSpan(
                                      children: [
                                        TextSpan(
                                          text: "Tela de silicone",
                                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                                            recognizer: TapGestureRecognizer() ..onTap = () async {
                                              await telaDeSilicone();
                                            }
                                        ),
                                        WidgetSpan(child: Icon(Icons.attach_file, size: 18,)),
                                        TextSpan(
                                          text: " Tela de acetato impregnada com soluções (AGE ou Rayon); ", style: TextStyle(fontSize: 12)
                                        ),
                                        TextSpan(
                                            text: "AGE",
                                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                                            recognizer: TapGestureRecognizer() ..onTap = () async {
                                              await AGE();
                                            }
                                        ),
                                        WidgetSpan(child: Icon(Icons.attach_file, size: 18,)),
                                        TextSpan(
                                          text: "; Hidrogel",
                                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                                          recognizer: TapGestureRecognizer() ..onTap = () async {
                                            await Hidrogel();
                                          }
                                      ),
                                      WidgetSpan(child: Icon(Icons.attach_file, size: 18,)),
                                      TextSpan(text: " com ou sem alginato;", style: TextStyle(fontSize: 12))
                                    ]
                                  )
                              )
                          ),
                        ],
                      ),
                    Colors.grey
                  ),
                  SizedBox(height: 10,),
                  ExpandedCustomColor(
                      Text(
                          "Tecido de epitelização",
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14)
                      ),
                      Column(
                        children: [
                          ExpandedCustom(
                              Text("Objetivo", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),),
                              Text("Proteção dos novos tecidos.", style: TextStyle(fontSize: 12))
                          ),
                          ExpandedCustom(
                              Text("Coberturas recomendadas", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),),
                              Text.rich(
                                  TextSpan(
                                      children: [
                                        TextSpan(
                                            text: "Hidrocoloide; ",
                                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                                            recognizer: TapGestureRecognizer() ..onTap = () async {
                                              await Hidrocoloide();
                                            }
                                        ),
                                        WidgetSpan(child: Icon(Icons.attach_file, size: 18,)),
                                        TextSpan(
                                            text: "AGE",
                                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                                            recognizer: TapGestureRecognizer() ..onTap = () async {
                                              await AGE();
                                            }
                                        ),
                                        WidgetSpan(child: Icon(Icons.attach_file, size: 18,)),
                                      ]
                                  )
                              )
                          ),
                        ],
                      ),
                    Colors.orange
                  ),
                ],
              ), Colors.purple
            )
          ],
        ),
      ),
    );
  }
}
