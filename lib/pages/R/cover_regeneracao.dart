import 'package:flutter/material.dart';
import 'package:timers_app/widgets/expandedCustom.dart';
import 'package:timers_app/widgets/expandedCustomColor.dart';


class CoverRegeneracao extends StatefulWidget {
  @override
  _CoverPageState createState() => _CoverPageState();
}

class _CoverPageState extends State<CoverRegeneracao> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[300],
        title: Text("Regeneração:\t\t\tCoberturas", style: TextStyle(fontWeight: FontWeight.bold)),
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
                  Text("Algumas coberturas possíveis: ", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                  Padding(
                    padding: const EdgeInsets.only(top: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                            ExpandedCustomColor(
                                Text("Laserterapia de baixa potencia", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.green, fontSize: 16),),
                                Column(
                                  children: [
                                    ExpandedCustom(
                                        Text('Mecanismo de ação', style:
                                        TextStyle(fontWeight: FontWeight.bold, fontSize: 12),),
                                        Text("Gera aumento da atividade mitocondrial, com consequente aumento de adenosinatrifosfato (ATP), vasodilatação, síntese proteica, ação antiinflamatória, neoangiogênese, proliferação epitelial e de fibroblastos, síntese e deposição de colágeno, revascularização e contração da ferida.",
                                        style: TextStyle(fontSize: 12),)
                                    ),
                                    ExpandedCustom(
                                        Text('Indicação', style:
                                        TextStyle(fontWeight: FontWeight.bold, fontSize: 12),),
                                        Text("Feridas agudas (feridas cirúrgicas) em processos de reparação tecidual, tais como traumatismos musculares, articulares, nervosos, ósseos e cutâneos.",
                                          style: TextStyle(fontSize: 12),)

                                    ),
                                    ExpandedCustom(
                                        Text("Contraindicações", style:
                                        TextStyle(fontWeight: FontWeight.bold, fontSize: 12),),
                                        Text("Em casos de tumor maligno localizado ou irradiado; epilepsia; sobre a glândula tireóide; sobre abdome gravídico; para pessoas com elevada hipersensibilidade e em casos de trombose em veia pélvica ou veias profundas das pernas.",
                                          style: TextStyle(fontSize: 12),)
                                    ),
                                    ExpandedCustom(
                                        Text('Periodicidade do Tratamento', style:
                                        TextStyle(fontWeight: FontWeight.bold, fontSize: 12),),
                                        Text('O tempo de duração do tratamento e número de sessões irá depender do caso clínico apresentado pelo paciente. Ainda não existem definições consensuais em relação à dose e ao comprimento de onda mais indicados para o tratamento de lesões.',
                                          style: TextStyle(fontSize: 12),)
                                    ),
                                  ],
                                ),
                              Colors.green

                            ),
                        SizedBox(height: 10,),
                        ExpandedCustomColor(
                            Text("Terapia por pressão negativa", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.red),),
                            Column(
                              children: [
                                ExpandedCustom(
                                    Text('Mecanismo de ação', style:
                                    TextStyle(fontWeight: FontWeight.bold, fontSize: 12),),
                                    Text("Tratamento não invasivo que promove a cicatrização da ferida por meio de uma pressão subatmosférica entre 50 mmHg e 150 mmHg, localizada e controlada. Estimula a proliferação celular , redução do edema e controle do exsudato.",
                                      style: TextStyle(fontSize: 12),)
                                ),
                                ExpandedCustom(
                                    Text('Indicação', style:
                                    TextStyle(fontWeight: FontWeight.bold, fontSize: 12),),
                                    Text("Feridas infectadas após desbridamento inicial, feridas infectadas em pós-operatório, osteíte e osteomielite. Síndrome compartimental, deiscência abdominal e peritonite, úlceras do pé diabético, lesão por pressão estágio 3 e 4; úlceras venosas; feridas traumáticas; enxerto de pele e retalho miocutâneo;",
                                      style: TextStyle(fontSize: 12),)
                                ),
                                ExpandedCustom(
                                    Text("Contraindicações", style:
                                    TextStyle(fontWeight: FontWeight.bold, fontSize: 12),),
                                    Text("Feridas oncológicas, osteomielite não tratada ou fístulas não exploradas, lesões com tecido necrótico, distúrbios de Coagulação- sangramentos agudos moderados a severos na região da ferida.",
                                      style: TextStyle(fontSize: 12),)
                                ),
                                ExpandedCustom(
                                    Text('Periodicidade do Troca', style:
                                    TextStyle(fontWeight: FontWeight.bold, fontSize: 12),),
                                    Text('Troca dos curativos é de aproximadamente 48h e a duração da terapia deverá ser avaliada caso a caso.',
                                      style: TextStyle(fontSize: 12),)
                                ),
                              ],
                            ), Colors.red

                        ),
                        SizedBox(height: 10,),
                        ExpandedCustomColor(
                            Text("Oxigenoterapia hiperbárica", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.blueAccent),),
                            Column(
                              children: [
                                Text("É uma modalidade terapêutica na qual o paciente respira oxigênio puro (100%), enquanto é submetido a uma pressão 2 a 3 vezes a pressão atmosférica ao nível do mar, no interior de uma câmara hiperbárica. Ela provoca um espetacular aumento na quantidade de oxigênio transportado pelo sangue, na ordem de 20 vezes o lume que circula em indivíduos que estão respirando ar ao nível do mar.",
                              style: TextStyle(fontSize: 12),),
                                ExpandedCustom(
                                    Text('Mecanismo de ação', style:
                                    TextStyle(fontWeight: FontWeight.bold, fontSize: 12),),
                                    Text("Gera aumento da atividade mitocondrial, com consequente aumento de adenosinatrifosfato (ATP), vasodilatação, síntese proteica, ação antiinflamatória, neoangiogênese, proliferação epitelial e de fibroblastos, síntese e deposição de colágeno, revascularização e contração da ferida.",
                                      style: TextStyle(fontSize: 12),)
                                ),
                                ExpandedCustom(
                                    Text('Indicação', style:
                                    TextStyle(fontWeight: FontWeight.bold, fontSize: 12),),
                                    Text("Feridas de difícil cicatrização; Feridas infectadas; Embolia gasosa; Doença descompressiva; Embolia traumática pelo ar; Gangrena gasosa; Síndrome de Fournier; Outras infecções necrotizantes de partes moles: celulites, fasceítes e miosites; Isquemias traumáticas agudas: lesão por esmagamento, síndrome compartimental, reimplante de extremidadeamputada e outros; Osteomielite.",
                                      style: TextStyle(fontSize: 12),)
                                ),
                                ExpandedCustom(
                                    Text("Contraindicações", style:
                                    TextStyle(fontWeight: FontWeight.bold, fontSize: 12),),
                                    Text("Gestação; pneumotórax não tratado e durante a administração dos quimioterápicos Doxorrubicina e Bleomicina e a medicação Sulfamylon.",
                                      style: TextStyle(fontSize: 12),)
                                ),
                                ExpandedCustom(
                                    Text('Periodicidade do Troca', style:
                                    TextStyle(fontWeight: FontWeight.bold, fontSize: 12),),
                                    Text('Tratamentos agudos podem necessitar de apenas 1 ou 2 sessões, porém feridas crônicas podem precisar de mais de 30 sessões.',
                                      style: TextStyle(fontSize: 12),)
                                ),
                              ],
                            ),
                          Colors.blue

                        ),

                          ]
                    ),
                  ),
                ]

            ),
          )



    );
  }
}
