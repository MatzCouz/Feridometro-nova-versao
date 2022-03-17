import 'package:flutter/material.dart';
import 'package:timers_app/widgets/expandedCustom.dart';
import 'package:timers_app/widgets/expandedCustomColor.dart';

class TratamentoRegeneracaoPage extends StatefulWidget {
  @override
  _TreatmentPageState createState() => _TreatmentPageState();
}

class _TreatmentPageState extends State<TratamentoRegeneracaoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[300],
        title: Text("Regeneração:\t\t\tTratamento", style: TextStyle(fontWeight: FontWeight.bold)),
      ),
      body: body(),
    );
  }

  Widget body() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
      child: ExpandedCustomColor(
          Text("Algumas formas de tratamento", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.brown[300]),),
          Align(
            alignment: Alignment.centerLeft,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "- Laserterapia de baixa potência",
                    style: TextStyle(fontWeight: FontWeight.normal, fontSize: 16),
                  ),
                  SizedBox(height: 10,),
                  Text(
                    "- Terapia por pressão negativa",
                    style: TextStyle(fontWeight: FontWeight.normal, fontSize: 16),
                  ),
                  SizedBox(height: 10,),
                  Text(
                    "- Oxigenoterapia hiperbárica",
                    style: TextStyle(fontWeight: FontWeight.normal, fontSize: 16),
                  ),
                  SizedBox(height: 10,),
                  Text(
                    "- Plasma Rico em Plaquetas (PRP)",
                    style: TextStyle(fontWeight: FontWeight.normal, fontSize: 16),
                  ),
                  SizedBox(height: 10,),
                  Text(
                    "- Terapia com células-tronco",
                    style: TextStyle(fontWeight: FontWeight.normal, fontSize: 16),
                  ),
                  SizedBox(height: 10,),
                  Text(
                    "- Enxerto autólogo de pele",
                    style: TextStyle(fontWeight: FontWeight.normal, fontSize: 16),
                  ),
                  SizedBox(height: 10,),
                  Text(
                    "- Membrana amniótica",
                    style: TextStyle(fontWeight: FontWeight.normal, fontSize: 16),
                  ),


                ]
            ),
          )
          , Colors.brown[300]
      ),)

    );
  }
}
