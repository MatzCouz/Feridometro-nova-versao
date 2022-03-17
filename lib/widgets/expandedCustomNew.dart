
import 'package:flutter/material.dart';

class ExpandedCustomNew extends StatefulWidget {

  final Widget init;
  final Widget hide;
  final String image;


  ExpandedCustomNew(this.init, this.hide, this.image);



  @override
  _ExpandedState createState() => _ExpandedState();
}

class _ExpandedState extends State<ExpandedCustomNew> {
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
                        (widget.image != "" ? widget.image : "asserts/white.png"),
                        height: (widget.image == "asserts/file_icon.png" ? 75 : 25),
                        width: (widget.image == "asserts/file_icon.png" ? 50 : 40),
                        fit: BoxFit.fill,
                        color: (widget.image != "" ? null : Colors.white),
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