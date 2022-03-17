import 'package:flutter/material.dart';
import 'package:timers_app/widgets/expandedCustom.dart';
import 'package:timers_app/widgets/expandedCustomColor.dart';

class CoverBordasPage extends StatefulWidget {
  @override
  _CoverPageState createState() => _CoverPageState();
}

class _CoverPageState extends State<CoverBordasPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[300],
        title: Text("Bordas:\t\t\tCoberturas", style: TextStyle(fontWeight: FontWeight.bold)),
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
                "Fotobiomodulação (laserterapia):",
                style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),
              ),
              Column(
                children: [
                  ExpandedCustomColor(
                      Text(
                        "Indicação:",
                        style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                      ),
                      Text(
                          "Tratamento de úlceras, feridas, deiscências, inflamações, edemas, micose de unha, herpes, pé-diabético e fissuras mamilares."
                      ),
                    Colors.orange[300]
                  ),
                  SizedBox(height: 10,),
                  ExpandedCustomColor(
                      Text(
                        "Contraindicação:",
                        style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                      ),
                      Text(
                          "Em casos de tumor maligno localizado ou irradiado; epilepsia; sobre a glândula tireóide; sobre abdome gravídico; para pessoas com elevada hipersensibilidade e em casos de trombose em veia pélvica ou veias profundas das pernas."
                      ),
                    Colors.redAccent

                  ),
                  SizedBox(height: 10,),
                  ExpandedCustomColor(
                    Text(
                      "Tratamento:",
                      style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                    ),
                    Text(
                      "O tempo de duração do tratamento e número de sessões irá depender do caso clínico apresentado pelo paciente. ",
                    ),
                    Colors.green[300]
                  ),
                ],
              ),
            Colors.blue),
            SizedBox(height: 10,),
            ExpandedCustomColor(

              Text(
                "Terapia de oxigênio hiperbárica:",
                style: TextStyle(fontWeight: FontWeight.bold, color: Colors.deepPurple),
              ),
              Column(
                children: [
                  Text(
                      "O paciente inala o oxigênio puro com pressão maior que a da atmosfera ( >1 atm). Pode promover a angiogênese e trata infecções;"
                  ),
                  SizedBox(height: 10,),
                  ExpandedCustomColor(
                      Text(
                        "Indicações:",
                        style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                      ),
                      Column(
                        children: [
                          Text(
                            "Feridas infectadas"
                          ),
                          Text(
                            "Necrose gangrenosa"
                          ),
                          Text(
                            "Pés-diabéticos"
                          ),
                          Text(
                            "Celulites e abscessos"
                          ),
                          Text(
                            "Úlceras venosas e arteriais"
                          )
                        ],
                      ),
                    Colors.orange[300]
                  ),
                  SizedBox(height: 10,),
                  ExpandedCustomColor(
                    Text(
                      "Periodicidade do tratamento:",
                      style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                    ),
                    Text(
                      "Tratamentos agudos podem necessitar de apenas 1 ou 2 sessões, porém  feridas crônicas podem precisar de mais de 30 sessões"
                    ),
                    Colors.redAccent
                  ),
                  SizedBox(height: 10,),
                  ExpandedCustomColor(
                      Text(
                        "Contraindicação:",
                        style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                      ),
                      Column(
                        children: [
                          Text(
                            "Gestação"
                          ),
                          Text(
                            "Pneumotórax não tratado"
                          ),
                          Text(
                            "Durante a administração dos quimioterápicos"
                          ),
                          Text(
                            "Doxorrubicina e Bleomicina"
                          ),
                          Text(
                            "Medicação Sulfamylon"
                          )
                        ],
                      ),
                    Colors.green[300]
                  )
                ],
              ),Colors.deepPurple
            ),
            SizedBox(height: 10,),
            ExpandedCustomColor(
              Text(
                "Creme barreira:",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),

              Column(
                children: [
                  ExpandedCustomColor(
                    Text('Composição', style:
                  TextStyle(fontWeight: FontWeight.bold, fontSize: 12, color: Colors.brown),),
                    Text('Água, Parafina líquida, Petrolato, Cera microcristalina, Oleato de Glicerol, Álcool de Lanolina, Ácido Cítrico, Citrato de Magnésio, Ciclometicone, Glicerina, Metilparabeno, Propilparabeno e Propilenoglicol.')
                    ,Colors.orange[300]
                  ),
                  SizedBox(height: 10,),
                  ExpandedCustomColor(
                    Text('Mecanismo de ação', style:
                    TextStyle(fontWeight: FontWeight.bold, fontSize: 12),),
                    Text('Creme hidrofóbico que oferece proteção contra urina e fezes, ao mesmo tempo em que hidrata a pele. Não possui nenhuma ação terapêutica cicatrizante. Sua ação é puramente mecânica de formação de uma barreira, impedindo o acesso de água no local protegido pelo creme.')
                    ,Colors.redAccent
                  ),
                  SizedBox(height: 10,),
                  ExpandedCustomColor(
                    Text('Indicação', style:
                    TextStyle(fontWeight: FontWeight.bold, fontSize: 12),),
                    Text("Hidratação da pele seca ou irritada, causada pelo exsudato oriundo da pele perilesional.")
                    ,Colors.green[300]
                  ),
                  SizedBox(height: 10,),
                  ExpandedCustomColor(
                    Text("Contraindicações", style:
                    TextStyle(fontWeight: FontWeight.bold, fontSize: 12),),
                    Text("Não há contraindicações"),
                    Colors.teal
                  )
                ],
              ),
              Colors.brown
            )



          ],
        ),
      ),
    );
  }
}
