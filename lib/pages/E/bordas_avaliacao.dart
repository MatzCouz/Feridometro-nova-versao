import 'package:flutter/material.dart';
import 'package:timers_app/widgets/expandedCustom.dart';
import 'package:timers_app/widgets/expandedCustomColor.dart';

class BordasAvaliacao extends StatefulWidget {
  @override
  _AssessmentPageState createState() => _AssessmentPageState();
}

class _AssessmentPageState extends State<BordasAvaliacao> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[300],
        title: Text("Bordas:\t\t\tAvaliação", style: TextStyle(fontWeight: FontWeight.bold)),
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
            Text("- O que você pode fazer para acelerar o avanço da borda da ferida?" , style: TextStyle(fontWeight: FontWeight.bold,  fontSize: 16),),
            SizedBox(height: 10,),
            ExpandedCustomColor(
                Text(
                    "Fibrose",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.cyan),
                ),
                Text(
                    "A borda se apresenta rígida, com excessiva proliferação fibrosa, semelhante ao tecido cicatricial, fortemente aderida ao leito da lesão, com coloração amarela ou rósea."
                ),
                Colors.cyan

            ),
            SizedBox(height: 10,),
            ExpandedCustomColor(
                Text(
                    "Macerada",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.red),

                ),
                Text(
                    "Tecido esbranquiçado que surge nas bordas das lesões, pregas cutâneas e fístulas, devido excesso de umidade."
                ),
                Colors.red
            ),
            SizedBox(height: 10,),
            ExpandedCustomColor(
                Text(
                    "Hiperqueratose",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.brown[500]),

                ),
                Column(
                  children: [
                    Image.asset("asserts/LETRA E_HIPERQUERATOSE.jpg",
                        height: 150,
                        width: 200,
                        fit: BoxFit.fill
                    ),
                    SizedBox(height: 15,),
                    Text(
                        "Ocorre sobreposição da camada córnea da epiderme, formando um tecido caloso, bem espesso, endurecido, de cor amarelada"
                    ),
                  ],
                ),
                Colors.brown[500]
            ),
            SizedBox(height: 10,),
            ExpandedCustomColor(
                Text(
                    "Epibolia ou borda enrolada",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.orange),

                ),
                Text(
                    "Acontece quando as bordas de uma lesão se fecham prematuramente."
                ),
                Colors.orange
            ),
            SizedBox(height: 10,),
            ExpandedCustomColor(
                Text(
                    "Descolamento ou solapamento",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.green),

                ),
                Text(
                    "É o descolamento do tecido subjacente da pele íntegra devido à destruição tecidual. Ocorre quando as bordas não estão aderidas ao leito."
                ),
                Colors.green
            ),

          ],
        ),
      ),
    );
  }
}
