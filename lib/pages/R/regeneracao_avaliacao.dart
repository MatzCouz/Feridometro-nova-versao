import 'package:flutter/material.dart';
import 'package:timers_app/widgets/expandedCustom.dart';
import 'package:timers_app/widgets/expandedCustomColor.dart';

class RegeneracaoAvaliacao extends StatefulWidget {
  @override
  _AssessmentPageState createState() => _AssessmentPageState();
}

class _AssessmentPageState extends State<RegeneracaoAvaliacao> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[300],
        title: Text("Regeneração:\t\t\tAvaliação", style: TextStyle(fontWeight: FontWeight.bold)),
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
            Text("Avalie a necessidade de acelerar o fechamento da ferida usando terapias adjuvantes" , style: TextStyle(fontWeight: FontWeight.bold,  fontSize: 14, color: Colors.pink),),
            ExpandedCustomColor(
              Text("O que pode ser feito para estimular a regeneração e/ou reparo da ferida?" , style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),),
              Text("Determine a terapia apropriada."),
              Colors.blueAccent
            ),
            Colors.pink)
          ],
        ),
      ),
    );
  }
}
