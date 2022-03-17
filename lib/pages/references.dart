import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:timers_app/widgets/expandedCustomColor.dart';
import 'package:timers_app/widgets/expandedCustomNew.dart';
import 'package:url_launcher/url_launcher.dart';

class ReferencesPage extends StatefulWidget {
  @override
  _ReferencesPage createState() => _ReferencesPage();
}


class _ReferencesPage extends State<ReferencesPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.white),
          backgroundColor: Colors.blue[300],
          centerTitle: true,
          elevation: 0,
          title: Text(
            "Referências online",
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
          )
      ),
      body: SingleChildScrollView(
        child:
          Padding(
            padding: EdgeInsets.all(15),
            child: Column(
              children: [
                ExpandedCustomNew(
                    Text("The race against hard-to-heal wounds.", style: TextStyle(fontWeight: FontWeight.bold)),
                    Column(
                      children: [
                        Text("ATKIN L; BUĆKO Z; CONDE MONTERO E. et al. Implementing TIMERS: the race against hard-to-heal wounds. J Wound Care., v. 1, n. 23, S1-S50, 2019"),
                        SizedBox(height: 10,),
                        InkWell(
                            child: Text('Clique aqui para acessar', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),),
                            onTap: () => launch('https://www.magonlinelibrary.com/doi/full/10.12968/jowc.2019.28.Sup3a.S1?rfr_dat=cr_pub++0pubmed&amp;url_ver=Z39.88-2003&amp;rfr_id=ori%3Arid%3Acrossref.org')
                        ),
                      ],
                    ),
                    "asserts/file_icon.png"
                ),
                SizedBox(height: 15,),
                ExpandedCustomNew(
                    Text("Expanding wound care beyond the focus of the wound.", style: TextStyle(fontWeight: FontWeight.bold)),
                    Column(
                      children: [
                        Text("ATKIN, L.; TETTELBACH, W. TIMERS: expanding wound care beyond the focus of the wound. British Journal of Nursing, v. 28, n. 20, S34–S37, 2019."),
                        SizedBox(height: 10,),
                        InkWell(
                            child: Text('Clique aqui para acessar', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),),
                            onTap: () => launch('https://www.magonlinelibrary.com/doi/abs/10.12968/bjon.2019.28.20.S34#:~:text=Hard%2Dto%2Dheal%20wounds%20affect,of%20the%20population%20is%20increasing')
                        ),
                      ],
                    ),
                    "asserts/file_icon.png"
                ),
                SizedBox(height: 15,),
                ExpandedCustomNew(
                    Text("Defying hard-to-heal wounds with an early antibiofilm intervention strategy: wound hygiene.", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                    Column(
                      children: [
                        Text("MURPHY C, ATKIN L, SWANSON T, TACHI M, TAN YK, VEGA DE CENIGA M, WEIR D, WOLCOTT R. International consensus document. Defying hard-to-heal wounds with an early antibiofilm intervention strategy: wound hygiene. J Wound Care, v. 29, Suppl 3b, S1–28, 2020."),
                        SizedBox(height: 10,),
                        InkWell(
                            child: Text('Clique aqui para acessar', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),),
                            onTap: () => launch('https://www.magonlinelibrary.com/doi/full/10.12968/jowc.2020.29.Sup3b.S1')
                        ),
                      ],
                    ),
                    "asserts/file_icon.png"
                ),
                SizedBox(height: 15,),
                ExpandedCustomNew(
                    Text("Guia de boas práticas. Preparo do Leito da lesão. Desbridamento.", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                    Column(
                      children: [
                        Text("SOCIEDADE BRASILEIRA DE ESTOMATERAPIA - SOBEST. Guia de boas práticas. Preparo do Leito da lesão. Desbridamento."),
                        SizedBox(height: 10,),
                        InkWell(
                            child: Text('Clique aqui para acessar', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),),
                            onTap: () => launch('https://sobest.com.br/wp-content/uploads/2020/10/Preparo-do-leito-da-ferida_SOBEST-e-URGO-2016.pdf')
                        ),
                      ],
                    ),
                    "asserts/file_icon.png"
                ),
              ],
            )

          )

      ),


    );
  }



}
