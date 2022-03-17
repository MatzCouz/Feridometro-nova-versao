import 'package:flutter/material.dart';
import 'package:timers_app/widgets/expandedCustom.dart';
import 'package:timers_app/widgets/expandedCustomColor.dart';


class CoverUmidade extends StatefulWidget {
  @override
  _CoverPageState createState() => _CoverPageState();
}

class _CoverPageState extends State<CoverUmidade> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[300],
        title: Text("Umidade:\t\t\tCoberturas", style: TextStyle(fontWeight: FontWeight.bold)),
      ),
      body: body(),
    );
  }

  Widget body() {
    return SingleChildScrollView(
      child:
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
                children: [
                  ExpandedCustomColor(
                  Text("Algumas coberturas possíveis: ", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.pink),),
                  Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [

                        Text(
                            "•	AGE"
                        ),
                        SizedBox(height: 10,),
                        Text(
                            "•	Cobertura não aderente estéril"
                        ),
                        SizedBox(height: 10,),
                        Text(
                            "•	Hidrogel"
                        ),
                        SizedBox(height: 10,),
                        Text(
                            "•	Ácido hialurônico"
                        ),
                        SizedBox(height: 10,),
                        Text(
                            "•	Alginato de cálcio"
                        ),
                        SizedBox(height: 10,),
                        Text(
                            "•	Espumas/Hidrofibras"
                        ),
                        SizedBox(height: 10,),
                        Text(
                            "•	DACC"
                        ),
                        SizedBox(height: 10,),
                        Text(
                            "•	Terapia compressiva"
                        ),
                        SizedBox(height: 10,),
                        Text(
                            "•	Terapia por pressão negativa"
                        ),
                      ],
                    ),
                  ),
                    Colors.pink
                  ),
                  SizedBox(height: 10,),
                  ExpandedCustomColor(
                      Text("Ácido Hialurônico 0,2%", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.deepPurple),),
                      Column(
                        children: [
                          ExpandedCustomColor(
                              Text("Composição:", style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                              Text("Creme contendo 2mg de ácido hialurônico (sal sódico) por grama"),
                            Colors.lightBlueAccent
                          ),
                          SizedBox(height: 10,),
                          ExpandedCustomColor(
                              Text("Indicação:", style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                              Text("Acelera a cicatrização e a renovação epitelial do tecido comprometido de feridas abertas de diversas etiologias.")
                            ,Colors.redAccent
                          ),
                          SizedBox(height: 10,),
                          ExpandedCustomColor(
                              Text("Contraindicação:", style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                              Text("Não deve ser utilizado por pacientes com história de alergia a qualquer um dos componentes da fórmula. não possui atividade antibacteriana, não deve ser utilizado isoladamente em feridas infectada")
                              ,Colors.green
                          ),
                          SizedBox(height: 10,),
                          ExpandedCustomColor(
                              Text("Periodicidade de troca:", style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                              Text("Realizar 1 a 3 aplicações tópicas ao dia."),
                            Colors.amber
                          ),

                        ],
                      ),
                    Colors.deepPurple

                  ),
                  SizedBox(height: 10,),
                  ExpandedCustomColor(
                      Text("Alginato de cálcio", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.cyan),),
                      Column(
                        children: [
                          ExpandedCustomColor(
                              Text("Composição:", style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                              Text("Fibras de não tecido, derivado de algas marinhas, composto pelos ácidos gulurônico e manurônico, com íons de cálcio e sódio incorporado às fibras. Pode ser associado a prata.")
                            ,Colors.lightBlueAccent
                          ),
                          SizedBox(height: 10,),
                          ExpandedCustomColor(
                              Text("Indicação:", style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                              Text("Feridas abertas, com perda de tecido, lesões cavitárias ou profundas, sangrantes, altamente exsudativas, com ou sem infecção.")
                            ,Colors.redAccent
                          ),
                          SizedBox(height: 10,),
                          ExpandedCustomColor(
                              Text("Contraindicação:", style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                              Text("Feridas superficiais ou com pouca quantidade de exsudato e lesões por queimaduras.")
                            ,Colors.green
                          ),
                          SizedBox(height: 10,),
                          ExpandedCustomColor(
                              Text("Periodicidade de troca:", style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                              Text("Trocar sempre que estiver saturado; em feridas infectadas a cada 24 horas; feridas limpas e com sangramento a cada 48 ou 72h ou de acordo com a saturação.")
                            , Colors.amber
                          ),

                        ],
                      ), Colors.cyan

                  )
                ]

            ),
          )


    );
  }
}
