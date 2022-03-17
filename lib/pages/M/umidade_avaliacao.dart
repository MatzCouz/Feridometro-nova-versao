import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:timers_app/widgets/expandedCustom.dart';
import 'package:timers_app/widgets/expandedCustomColor.dart';

class UmidadeAvaliacao extends StatefulWidget {
  @override
  _AssessmentPageState createState() => _AssessmentPageState();
}

class _AssessmentPageState extends State<UmidadeAvaliacao> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[300],
        title: Text("Umidade:\t\t\tAvaliação", style: TextStyle(fontWeight: FontWeight.bold)),
      ),
      body: body(),
    );
  }

  Widget body(){
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text("Avalie a características do exsudato: quantidade, cor, odor, possíveis constituintes e aparência." , style: TextStyle(fontWeight: FontWeight.bold,  fontSize: 16),),
            SizedBox(height: 10,),
            ExpandedCustomColor(
              Text("Tipos de exsudato:" , style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),),
              Column(
                children: [
                  ExpandedCustomColor(
                      Text(
                        "Seroso",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Plasma claro, translúcido, fluido, sem sinais de infecção. Caracteriza-se pelo líquido de baixo conteúdo protéico."
                      ),
                    Colors.greenAccent
                  ),
                  SizedBox(height: 10,),
                  ExpandedCustomColor(
                      Text(
                        "Sanguinolento ou hemático",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Cor de sangue vivo, avermelhado. Indica dano de vasos sanguíneos. Pode sinalizar infecção crônica, se presente em moderada a grande quantidade."
                      ),
                    Colors.green
                  ),
                  SizedBox(height: 10,),
                  ExpandedCustomColor(
                      Text(
                          "Serossanguinolento",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                          "Rosado ou avermelhado, fluído, típico da fase inflamatória e proliferativa."
                      ),
                    Colors.teal
                  ),
                  SizedBox(height: 10,),
                  ExpandedCustomColor(
                      Text(
                          "Purulento",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                          "Amarelado, acastanhado ou esverdeado, opaco e denso. Composto por proteínas, leucócitos e restos celulares. Sinaliza infecção e pode estar associado a odor fétido."
                      ),
                    Colors.lightBlueAccent
                  ),


                ],
              ),
            Colors.blueAccent),
            SizedBox(height: 10,),
            ExpandedCustomColor(
                Text(
                  "Quantidade de exsudato:",
                  style: TextStyle(fontWeight: FontWeight.bold, color: Colors.pinkAccent),
                ),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "•	Ausente", style: TextStyle( fontSize: 15, fontWeight: FontWeight.normal ),
                    ),
                    Text(
                      "•	Pequena ", style: TextStyle( fontSize: 15, fontWeight: FontWeight.normal ),
                    ),
                    Text(
                      "•	Média", style: TextStyle( fontSize: 15, fontWeight: FontWeight.normal ),
                    ),
                    Text(
                      "•	Grande", style: TextStyle( fontSize: 15, fontWeight: FontWeight.normal ),
                    )
                  ]
                  ),
                ),
            Colors.pinkAccent),
            SizedBox(height: 10,),
            ExpandedCustomColor(
                Text(
                  "ODOR:",
                  style: TextStyle(fontWeight: FontWeight.bold, color: Colors.brown),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "•	Ausente", style: TextStyle( fontSize: 15, fontWeight: FontWeight.normal ),
                        ),
                        Text(
                          "•	Característico ", style: TextStyle( fontSize: 15, fontWeight: FontWeight.normal ),
                        ),
                        Text(
                          "•	Fétido", style: TextStyle( fontSize: 15, fontWeight: FontWeight.normal ),
                        ),
                        Text(
                          "•	Pútrido ", style: TextStyle( fontSize: 15, fontWeight: FontWeight.normal ),
                        )
                      ]
                  ),
                ),
            Colors.brown)
          ],
        ),
      ),
    );
  }
}
