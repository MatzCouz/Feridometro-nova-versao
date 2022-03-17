import 'package:flutter/material.dart';
import 'package:timers_app/widgets/expandedCustom.dart';
import 'package:timers_app/widgets/expandedCustomColor.dart';

class TratamentoFatoresSociaisPage extends StatefulWidget {
  @override
  _TreatmentPageState createState() => _TreatmentPageState();
}

class _TreatmentPageState extends State<TratamentoFatoresSociaisPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[300],
        title: Text("Fatores Sociais:\t\t\tTratamento", style: TextStyle(fontWeight: FontWeight.bold)),
      ),
      body: body(),
    );
  }

  Widget body() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            ExpandedCustomColor(
                Text(
                  "Fatores familiares",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.indigo),
                ),
              Text(
                "Envolva paciente e família durante todo o plano de cuidados.",
                style: TextStyle(fontSize: 14),
              ),Colors.indigo
            ,
            ),
            SizedBox(height: 20,),
            ExpandedCustomColor(
              Text(
                "Encaminhe o paciente para acompanhamento por equipe multiprofissional",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.red),
              ),
              Text(
                "Nutricionista, fisioterapeuta, cirurgião vascular, endocrinologista, dermatologista, psicológico, cirurgião plástico",
                style: TextStyle(fontSize: 14),
              ),
              Colors.red
            )
        ]
      ),
      ),
    );
  }
}
