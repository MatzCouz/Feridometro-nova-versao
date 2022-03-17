import 'package:flutter/material.dart';
import 'package:timers_app/widgets/expandedCustom.dart';
import 'package:timers_app/widgets/expandedCustomColor.dart';


class FatoresSociaisAvaliacao extends StatefulWidget {
  @override
  _AssessmentPageState createState() => _AssessmentPageState();
}

class _AssessmentPageState extends State<FatoresSociaisAvaliacao> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[300],
        title: Text("Fatores Sociais:\t\t\tAvaliação", style: TextStyle(fontWeight: FontWeight.bold)),
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
            ExpandedCustomColor(
            Text("Informações importantes de avaliação:" , style: TextStyle(fontWeight: FontWeight.bold,  fontSize: 16, color: Colors.blue),),
            Align(
                alignment: Alignment.centerLeft,
                child:                 Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                        "•	Idade"
                    ),
                    SizedBox(height: 10,),
                    Text(
                        "•	Queixas"
                    ),
                    SizedBox(height: 10,),

                    Text(
                        "•	Dor"
                    ),
                    SizedBox(height: 10,),

                    Text(
                        "•	Exame físico completo"
                    ),
                    SizedBox(height: 10,),

                    Text(
                        "•	Estado neurológico"
                    ),
                    SizedBox(height: 10,),

                    Text(
                        "•	Mobilidade"
                    ),
                    SizedBox(height: 10,),

                    Text(
                        "•	Condições vasculares"
                    ),
                    SizedBox(height: 10,),

                    Text(
                        "•	Estado nutricional"
                    ),
                    SizedBox(height: 10,),

                    Text(
                        "•	Patologias associadas"
                    ),
                    SizedBox(height: 10,),

                    Text(
                        "•	Medicações em uso"
                    ),
                    SizedBox(height: 10,),

                    Text(
                        "•	Hábitos de vida"
                    ),
                    SizedBox(height: 10,),

                    Text(
                        "•	Exames laboratoriais"
                    ),
                    SizedBox(height: 10,),

                    Text(
                        "•	Qualidade de vida"
                    ),
                    SizedBox(height: 10,),

                    Text(
                        "•	Adesão ao tratamento"
                    ),
                    SizedBox(height: 10,),

                    Text(
                        "•	Conhecimento do paciente, familiares e cuidadores sobre a etiologia e os cuidados com a lesão. "
                    ),
                    SizedBox(height: 10,),

                    Text(
                        "•	Necessidade de encaminhamento do paciente para avaliação interprofissional "
                    ),



                  ],
                )
            )
            ), Colors.blueAccent)
          ],
        ),
      ),
    );
  }
}
