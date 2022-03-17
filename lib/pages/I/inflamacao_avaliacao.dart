import 'package:flutter/material.dart';
import 'package:timers_app/widgets/expandedCustom.dart';
import 'package:timers_app/widgets/expandedCustomColor.dart';

class InflamacaoAvaliacao extends StatefulWidget {
  @override
  _AssessmentPageState createState() => _AssessmentPageState();
}

class _AssessmentPageState extends State<InflamacaoAvaliacao> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[300],
        title: Text("Inflamação:\t\t\tAvaliação", style: TextStyle(fontWeight: FontWeight.bold),),
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
            SizedBox(height: 10,),
            ExpandedCustomColor(
                Text("Sintomas de inflamação:" , style: TextStyle(fontWeight: FontWeight.bold,  fontSize: 16, color: Colors.orange),),
                Container(
                    alignment: Alignment.centerLeft,
                    child:
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("• Dor", style: TextStyle(fontSize: 13),),
                        Text("• Calor", style: TextStyle(fontSize: 13),),
                        Text("• Rubor", style: TextStyle(fontSize: 13),),
                        Text("• Edema", style: TextStyle(fontSize: 13),),
                      ],
                    )
                ), Colors.orange),

            SizedBox(height: 20,),
            ExpandedCustomColor(
              Text("O que é BIOFILME?" , style: TextStyle(fontWeight: FontWeight.bold, color: Colors.deepPurple),),
              Text("O biofilme é definido como um arranjo social de células microbianas envoltas por matriz de substâncias poliméricas extracelulares organizadas por meio do quorum sensing, formado pelo processo de adesão bacteriana. Podem ser formados por populações desenvolvidas a partir de uma única ou de múltiplas espécies de microorganismos, como fungos, protozoários e bactérias. O biofilme pode formar-se em poucas horas e pode atingir a maturidade em 48–72 horas."),
            Colors.deepPurple),
            SizedBox(height: 20,),
            ExpandedCustomColor(
                Text("Algoritmo de diagnóstico da presença de biofilme em feridas" , style: TextStyle(fontWeight: FontWeight.bold, color: Colors.lightGreen[800]),),

                Padding(
                  padding: const EdgeInsets.only(left: 2),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,


                children: [
                    Text("•	Falha terapêutica (tópica e sistêmica)"),
                  Text("•	Atraso na cicatrização Presença de tecido de granulação friável ou hiper granulação"),
                  Text("•	Aumento do tecido necrótico"),
                  Text("•	Odor fétido"),
                  Text("•	Aumento do exsudato e piora do seu aspecto"),
                  Text("•	Sinais de infecção > 30 dias"),
                  Text("•	Inflamação"),
                  Text("•	Material gelatinoso na superfície da ferida que se forma rapidamente apesar da limpeza/desbridamento, exsudato em grandes volumes"),
                  Text("•	Eritema de baixo grau")
                ],
              )
               ), Colors.lightGreen[800]
            )
          ],
        ),
      ),
    );
  }
}
