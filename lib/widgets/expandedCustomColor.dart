
import 'package:flutter/material.dart';

class ExpandedCustomColor extends StatefulWidget {

  final Widget init;
  final Widget hide;
  final Color image;


  ExpandedCustomColor(this.init, this.hide, this.image);



  @override
  _ExpandedState createState() => _ExpandedState();
}

class _ExpandedState extends State<ExpandedCustomColor> {
  bool show = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 3,
                offset:  Offset(0.5, 2)
              )
            ],
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child:
              Column(
                children: [
                  ListTile(
                    leading: Image.asset(
                        "asserts/white.png",
                        height: 25,
                        width: 40,
                        fit: BoxFit.fill,
                        color: widget.image,
                    ),
                    title: widget.init,
                    trailing: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          child: Icon(show
                              ? Icons.expand_less_outlined
                              : Icons.expand_more_outlined),
                          onTap: () {
                            setState(() {
                              show = !show;
                            });
                          },
                        ),
                      ],
                    ),
                    onTap: () {
                      setState(() {
                        show = !show;
                      });
                    },
                  ),
                  show ?
                  Container(
                    padding: EdgeInsets.all(15),
                    child: widget.hide,
                  )
                      : SizedBox()
    ],
            )
          ,
        )
        
      ],
    );
  }
}