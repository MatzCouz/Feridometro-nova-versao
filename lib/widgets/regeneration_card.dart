import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class RegeneracaoCard extends StatefulWidget {
  RegeneracaoCard({
    @required this.title,
    @required this.subtitle,
    @required this.icon,
    @required this.backgroundIconColor,
    @required this.points,
    Key key,
  }) : super(key: key);

  final String title;
  final String subtitle;
  final AssetImage icon;
  final Color backgroundIconColor;
  final double points;

  @override
  _AcronymCardState createState() => _AcronymCardState();
}

class _AcronymCardState extends State<RegeneracaoCard> {
  bool expanded = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          ListTile(
            onTap: () {
              setState(() {
                expanded = !expanded;
              });},
            contentPadding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
            leading: CircleAvatar(
              backgroundColor: widget.backgroundIconColor,
              child: CircleAvatar(
                backgroundColor: Colors.white,
                foregroundImage: widget.icon,
                radius: 27,
              ),
              radius: 30,
            ),
            title: Text(
              widget.title,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
            ),
            subtitle: Text(
              widget.subtitle,
              style: TextStyle(fontSize: 11),
            ),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  child: Icon(expanded
                      ? Icons.expand_less_outlined
                      : Icons.expand_more_outlined),
                  onTap: () {
                    setState(() {
                      expanded = !expanded;
                    });
                  },
                ),
              ],
            ),
          ),
          expanded
              ? Container(
                  child: Column(
                    children: [
                                          
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          OutlinedButton(
                              style: ElevatedButton.styleFrom(
                                shape: new RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(30.0),
                                ),
                              ),
                              onPressed: () {Navigator.pushNamed(context, '/avaliacaoregeneracao');},
                              child: Row(
                                children: [
                                  Text("Avalia????o"),
                                ],
                              )),   ]),    
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          OutlinedButton(
                              style: ElevatedButton.styleFrom(
                                shape: new RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(30.0),
                                ),
                              ),
                              onPressed: () {Navigator.pushNamed(context, '/treatmentregeneracao');},
                              child: Row(
                                children: [
                                  Text("Tratamento"),
                                ],
                              )),    ]), 

                         Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          OutlinedButton(
                              style: ElevatedButton.styleFrom(
                                shape: new RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(30.0),
                                ),
                              ),
                              onPressed: () {Navigator.pushNamed(context, '/coverregeneracao');},
                              child: Row(
                                children: [
                                  Text("Coberturas"),
                                ],
                              )), ]),
                    ],
                  ),
                )
              : SizedBox()
        ],
      ),
      elevation: 5,
    );
  }
}
