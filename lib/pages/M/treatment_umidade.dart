import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:timers_app/widgets/expandedCustom.dart';
import 'package:timers_app/widgets/expandedCustomColor.dart';


class TreatmentUmidadePage extends StatefulWidget {
  @override
  _TreatmentPageState createState() => _TreatmentPageState();
}

class _TreatmentPageState extends State<TreatmentUmidadePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[300],
        title: Text("Umidade:\t\t\tTratamento", style: TextStyle(fontWeight: FontWeight.bold),),
      ),
      body: body(),
    );
  }

  alginatodecalcio(){
    AlertDialog screen = AlertDialog(
      content: SingleChildScrollView(
        child: Column(
          children: [
            Text("•  Ácido Hialurônico 0,2%", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
            Column(
              children: [
                Text("•  Alginato de cálcio", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                Column(
                  children: [
                    ExpandedCustom(
                        Text("Composição:", style: TextStyle(fontSize: 12)),
                        Text("Fibras de não tecido, derivado de algas marinhas, composto pelos ácidos gulurônico e manurônico, com íons de cálcio e sódio incorporado às fibras. Pode ser associado a prata.", style: TextStyle(fontSize: 12))
                    ),
                    ExpandedCustom(
                        Text("Indicação:", style: TextStyle(fontSize: 12)),
                        Text("Feridas abertas, com perda de tecido, lesões cavitárias ou profundas, sangrantes, altamente exsudativas, com ou sem infecção.", style: TextStyle(fontSize: 12))
                    ),
                    ExpandedCustom(
                        Text("Contraindicação:", style: TextStyle(fontSize: 12)),
                        Text("Feridas superficiais ou com pouca quantidade de exsudato e lesões por queimaduras.", style: TextStyle(fontSize: 12))
                    ),
                    ExpandedCustom(
                        Text("Periodicidade de troca:", style: TextStyle(fontSize: 12)),
                        Text("Trocar sempre que estiver saturado; em feridas infectadas a cada 24 horas; feridas limpas e com sangramento a cada 48 ou 72h ou de acordo com a saturação.", style: TextStyle(fontSize: 12))
                    ),

                  ],
                )

              ],
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

  acidohialuronico(){
    AlertDialog screen = AlertDialog(
      content: SingleChildScrollView(
        child: Column(
          children: [
            Text("•  Ácido Hialurônico 0,2%", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
            Column(
              children: [
                ExpandedCustom(
                    Text("Composição:", style: TextStyle(fontSize: 12)),
                    Text("Creme contendo 2mg de ácido hialurônico (sal sódico) por grama", style: TextStyle(fontSize: 12))
                ),
                ExpandedCustom(
                    Text("Indicação:", style: TextStyle(fontSize: 12)),
                    Text("Acelera a cicatrização e a renovação epitelial do tecido comprometido de feridas abertas de diversas etiologias.", style: TextStyle(fontSize: 12))
                ),
                ExpandedCustom(
                    Text("Contraindicação:", style: TextStyle(fontSize: 12)),
                    Text("Não deve ser utilizado por pacientes com história de alergia a qualquer um dos componentes da fórmula. não possui atividade antibacteriana, não deve ser utilizado isoladamente em feridas infectada", style: TextStyle(fontSize: 12))
                ),
                ExpandedCustom(
                    Text("Periodicidade de troca:", style: TextStyle(fontSize: 12)),
                    Text("Realizar 1 a 3 aplicações tópicas ao dia.", style: TextStyle(fontSize: 12))
                ),

              ],
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
                "A ferida está muito seca?",
                style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
              ),
                Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "• AGE",
                    style: TextStyle(),
                  ),
                  Text(
                    "• Cobertura não aderente estéril"
                  ),
                  Text(
                    "• Hidrogel"
                  ),
                  Row(
                    children: [
                      Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                  text: "• Ácido hialurônico",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                  recognizer: TapGestureRecognizer() ..onTap = () async {
                                    await acidohialuronico();
                                  }
                              ),
                              WidgetSpan(child: Icon(Icons.attach_file, size: 18,)),
                            ],
                          )
                      ),
                    ],
                  ),
                ],
                    )
              ), Colors.red
            ),
            SizedBox(height: 10,),
            ExpandedCustomColor(
                Text(
                  "A ferida está muito úmida?",
                  style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),
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
                                        text: "• Alginato de cálcio",
                                        style: TextStyle(fontWeight: FontWeight.bold),
                                        recognizer: TapGestureRecognizer() ..onTap = () async {
                                          await alginatodecalcio();
                                        }
                                    ),
                                    WidgetSpan(child: Icon(Icons.attach_file, size: 18,)),
                                  ],
                                )
                            ),
                          ],
                        ),
                    Text(
                      "• Espumas/Hidrofibras"
                    ),
                    Text(
                      "• DACC"
                    ),
                    Text(
                      "• Terapia compressiva"
                    ),
                    Text(
                      "• Terapia por pressão negativa"
                    ),

                  ],
                )
            ), Colors.blue
            )
        ]
      ),
      ),
    );
  }
}
