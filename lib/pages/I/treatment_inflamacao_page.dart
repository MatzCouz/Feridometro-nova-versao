import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:timers_app/widgets/expandedCustom.dart';
import 'package:timers_app/widgets/expandedCustomColor.dart';

class TreatmentInflamacaoPage extends StatefulWidget {
  @override
  _TreatmentPageState createState() => _TreatmentPageState();
}

class _TreatmentPageState extends State<TreatmentInflamacaoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[300],
        title: Text("Inflamação:\t\t\tTratamento", style: TextStyle(fontWeight: FontWeight.bold),),
      ),
      body: body(),
    );
  }

  dacc(){
    AlertDialog screen = AlertDialog(
      content: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("asserts/tratamentos_infeccao/Cloreto de Diaquil Carmaboil_DACC.jpg",
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
                    "Curativo antimicrobiano composto de tecido acetato impregnado com Cloreto de Dialquil Carbamoil (DACC);",
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
                Text(
                    "Todos os tipos de feridas exsudativas contaminadas, colonizadas ou infectadas, independentemente da sua etiologia. É considerado um antimicrobiano passivo com atividade antibiofilme, visto que atrai a carga microbiana do leito da lesão para o curativo."
                  ,
                  style: TextStyle(fontSize: 12),)
            ),
            ExpandedCustom(
                Text(
                  "Contraindicação:",
                  style:
                  TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                ),
                Text(
                    "Não são conhecidas contraindicações específicas até o presente momento",
                  style: TextStyle(fontSize: 12),
                )
            ),
            ExpandedCustom(
                Text(
                  "Periodicidade de Troca:",
                  style:
                  TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Diariamente ou permanecer no local por até 7 dias em feridas úmidas sob compressão, porém em média ele permanece no local de 1 a 3 dias, devendo ser observado a quantidade de drenagem e saturação do curativo.",
                          style: TextStyle(fontSize: 12),
                        ),
                        ExpandedCustom(
                            Text(
                              "•	Terapia por pressão negativa: ",
                              style:
                              TextStyle(fontWeight: FontWeight.normal, fontSize: 12),
                            ),
                            Text(
                                "Pode contribuir na remoção do biofilme quando usada na modalidade instilação com ou sem antisséptico, imerso no leito da ferida por um determinado período e, posteriormente, drenando o fluído ao ativar a pressão negativa."
                            , style: TextStyle(fontSize: 11),
                            )
                        ),
                        ExpandedCustom(
                            Text(
                              "•	Ozonioterapia: ",
                              style:
                              TextStyle(fontWeight: FontWeight.normal, fontSize: 12),
                            ),
                            Text(
                                "Oxida lipoproteínas e fosfolipídios presentes nas membranas das paredes bacterianas causando danos irreversíveis. A ação da ozonioterapia em biofilmes ainda não está elucidado."
                            , style: TextStyle(fontSize: 11),
                            )
                        ),
                        ExpandedCustom(
                            Text(
                              "•	Hidrocirurgia:",
                              style:
                              TextStyle(fontWeight: FontWeight.normal, fontSize: 12),
                            ),
                            Text(
                                "A irrigação intensa e rápida da ferida é capaz de remover tecidos inviáveis e biofilme. Ainda pode ser considerada potencializadora da ação de soluções antissépticas quando utilizadas em conjunto"
                            , style: TextStyle(fontSize: 11),)
                        )
                      ]
                  ),
                )
            )

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
            Image.asset("asserts/tratamentos_infeccao/Cadexomero de iodo.jpg",
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
                    "Pomada castanho-escuro estéril, composto por cadexômero (microgrânulos de amido modificado), polietilenoglicol, poloxâmero e iodo.",
                  style: TextStyle(fontSize: 12),

                )
            ),
            ExpandedCustom(
                Text(
                  "Indicação:",
                  style:
                  TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                ),
                Text(
                    "Tratamento tópico de feridas exsudativas crônicas. Pode ser usado sob terapia de compressão, pode ser utilizado em feridas infectadas. É ativo contra MRSA e atua prevenindo a formação do biofilme. Coberturas contendo cadexômero de iodo têm apresentado ação contra bactérias planctônicas e biofilmes bacterianos de S. aureus e P. aeureginosa."
                  ,                style: TextStyle(fontSize: 12),

                )
            ),
            ExpandedCustom(
                Text(
                  "Contraindicações:",
                  style:
                  TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                ),
                Text(
                    "Tecidos necróticos secos ou em doentes com sensibilidade conhecida ao iodo ou a qualquer um dos seus componentes. Crianças, mulheres grávidas ou que estejam amamentando, pessoas que sofram de insuficiência renal ou com distúrbios da tiroide (ex: tiroidite de Hashimoto ou bócio nodular não-tóxico).",
                  style: TextStyle(fontSize: 12),

                )
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
            )

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

  pratas(){
    AlertDialog screen = AlertDialog(
      content: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("asserts/tratamentos_infeccao/CurativoPrata.jpg",
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
                    "Espumas ou compressas não-aderentes impregnadas com prata; hidrofibras ou fibras hidrodesbridantes, associação com hidrocolóides e alginato.",
                  style: TextStyle(fontSize: 12),

                )
            ),
            ExpandedCustom(

                Text(
                  "Mecanismo de ação",
                  style:
                  TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                ),
                Text(
                    "Controle de bactérias presentes no leito da lesão; age pela liberação da prata em contato com o exsudato; a bactéria tem tropismo pela prata e, ao entrar em contato com a mesma impede de multiplicar-se",
                  style: TextStyle(fontSize: 12),

                )
            ),
            ExpandedCustom(
                Text(
                  "Indicações:",
                  style:
                  TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                ),
                Text(
                    "Desbridamento de lesões com esfacelos e muito exsudativas; redução da multiplicação bacteriana no leito da ferida;",
                  style: TextStyle(fontSize: 12),

                )
            ),
            ExpandedCustom(
                Text(
                  "Contraindicação:",
                  style:
                  TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                ),
                Text(
                    "Feridas secas e em fase de granulação; exposição óssea",
                  style: TextStyle(fontSize: 12),

                )
            )

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

  phmb(){
    AlertDialog screen = AlertDialog(
      content: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("asserts/tratamentos_infeccao/Foto PHMB.jpg",
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
                "Solução - Água purificada e polihexanida a 0,1% e/ou 0,2%; Gel 0,1% de Betaina, carboximetilcelulose, Cocoamidopropilbetaína, glicerina e água purificada. Algumas fórmulas também contêm uma substância antimicrobiana e um agente tensioativo.",
                style: TextStyle(fontSize: 12),
              ),
            ),
            ExpandedCustom(
                Text(
                  "Indicação:",
                  style:
                  TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                ),
                Text(
                    "Limpeza e hidratação de feridas agudas ou crônicas; Desbridamento de crostas e necroses; Remoção de biofilme. Amplo espectro de atividade contra microrganismos sem evidências de resistência.",
                  style: TextStyle(fontSize: 12),

                )
            ),
            ExpandedCustom(
                Text(
                  "Contraindicação:",
                  style:
                  TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                ),
                Text(
                    "Pessoas com hipersensibilidade a algum componente do produto; uso em cartilagem hialina e queimaduras de 3º grau.",
                  style: TextStyle(fontSize: 12),

                )

            ),
            ExpandedCustom(
              Text(
                "Periodicidade de troca:",
                style:
                TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
              ),
              Text(
                "Solução troca a cada 24 horas; gel pode permanecer até 72 horas ou quando necessário",
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

  Widget body() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              "",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            ExpandedCustomColor(
              Text(
                "Diagnóstico de biofilme",
                style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
              ),
                Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "•	A biópsia do tecido é considerada padrão ouro para identificação do biofilme em feridas.",
                    style: TextStyle(),
                  ),
                  Text(
                    "•	O teste de cultura microbiológica não deve ser utilizado para diagnóstico de presença de biofilme, pois é apenas indicador de bactérias planctônicas presentes no exsudato/superfície da lesão. "
                  )
                ],
                    )
              ),
            Colors.red),
            SizedBox(height: 10,),
            ExpandedCustomColor(
                Text(
                  "Tratamento do biofilme",
                  style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blueAccent),
                ),
                
                ExpandedCustomColor(
                    Text("O desbridamento regular, acompanhado de estratégias de não reaparecimento de biofilme, incluindo a utilização soluções antissépticas e coberturas antimicrobianas para uso tópico:",
                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                    Row(
                      children: [
                        Text.rich(
                        TextSpan(
                          children: [
                                TextSpan(
                                  text: "•	Polihexanida (PHMB)",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                  recognizer: TapGestureRecognizer() ..onTap = () async {
                                  await phmb();
                                  }
                              ),
                            WidgetSpan(child: Icon(Icons.attach_file, size: 18,)),
                          ],
                        )
                        ),
                      ],
                    ),
                        Row(
                          children: [
                            Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                        text: "•	Coberturas com Prata",
                                        style: TextStyle(fontWeight: FontWeight.bold),
                                        recognizer: TapGestureRecognizer() ..onTap = () async {
                                          await pratas();
                                        }
                                    ),
                                    WidgetSpan(child: Icon(Icons.attach_file, size: 18,)),
                                  ],
                                )
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                        text: "•	Cadexômero de Iodo ",
                                        style: TextStyle(fontWeight: FontWeight.bold),
                                        recognizer: TapGestureRecognizer() ..onTap = () async {
                                          await iodo();
                                        }
                                    ),
                                    WidgetSpan(child: Icon(Icons.attach_file, size: 18,)),
                                  ],
                                )
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                        text: "•	Cloreto de dialquil carbamoil (DACC) ",
                                        style: TextStyle(fontWeight: FontWeight.bold),
                                        recognizer: TapGestureRecognizer() ..onTap = () async {
                                          await dacc();
                                        }
                                    ),
                                    WidgetSpan(child: Icon(Icons.attach_file, size: 18,)),
                                  ],
                                )
                            ),
                          ],
                        ),
                    Text(
                      "•	EDTA (ácido etilenodiamino tetra-acético) "
                    ),
                    Text(
                      "•	Terapia por pressão negativa "
                    ),
                    Text(
                      "•	Ozonioterapia"
                    ),
                    Text(
                      "•	Hidrocirurgia"
                    ),
                        Text(
                          "• Não são recomendadas o uso de soluções altamente citotóxicas, como as que contêm iodopovidona e peróxido de hidrogénio para limpeza do leito da ferida e pele perilesional."
                        ),
                        Text(
                          "• O uso comum de irrigações com soro fisiológico ou água não removerá o biofilme, pois são ineficazes na redução da carga bacteriana."
                        )
                  ],
                )
            ),
                  Colors.brown[300]
                ), Colors.blueAccent
            )
        ]
      ),
      ),
    );
  }
}
