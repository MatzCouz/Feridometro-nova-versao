import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:timers_app/model/chat_message.dart';
import 'package:timers_app/boxes.dart';

class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}


class _ChatPageState extends State<ChatPage> {

  CollectionReference chat = FirebaseFirestore.instance.collection("chat");

  TextEditingController _chatOnlineInput = TextEditingController();

  List<ChatMessage> messages = [];

  String name;

  final Stream<QuerySnapshot> _chatsStream = FirebaseFirestore.instance.collection("chat").orderBy("timestamp", descending: true).snapshots();

  void initState() {
    final box = Boxes.getUsers();

    setState(() {
      name = box.getAt(box.length - 1).nome;
    });
  }

  Future<void> saveMessage() async{
    return await chat.add({
      'username': this.name,
      'message': this._chatOnlineInput.text,
      'timestamp': FieldValue.serverTimestamp()
    })
        .then((value) => this._chatOnlineInput.clear())
        .catchError((error) => print("failed: $error"));

  }

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
            "Chat Público",
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
          )
      ),
      body: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child:
            Padding(
              padding: EdgeInsets.only(left: 15, bottom: 15),
              child:

                Row(
                  children: <Widget>[
                    Flexible(
                        child:
                        TextField(
                            controller: this._chatOnlineInput,
                            keyboardType: TextInputType.text,
                            style: TextStyle(color: Color(0xFF0F2E48), fontSize: 14),
                            autofocus: false,
                            onSubmitted: (v) {},
                            decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(25),
                                    borderSide: BorderSide(color: Color(0xFFAAB5C3))),
                                filled: true,
                                fillColor: Color(0xFFF3F3F5),
                                focusColor: Color(0xFFF3F3F5),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(25),
                                    borderSide: BorderSide(color: Color(0xFFAAB5C3))),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(25),
                                    borderSide: BorderSide(color: Colors.blue[300])),
                                hintText: "Mensagem Aqui")
                        )
                    ),
                    RawMaterialButton(
                      onPressed: () => setState(() => {this.saveMessage()}),
                      elevation: 1.0,
                      fillColor: Colors.white,
                      child: Icon(
                        Icons.keyboard_arrow_right,
                        size: 35.0,
                      ),
                      padding: EdgeInsets.all(10.0),
                      shape: CircleBorder(),
                    )
                  ]

              ),
            )



        ),
          StreamBuilder(
              stream: _chatsStream,
              builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot){
                if(snapshot.hasError){
                  return Text("Error");
                }

                if(snapshot.connectionState == ConnectionState.waiting){
                  return Text("Waiting...");
                }

                return Container(
                  margin: EdgeInsets.only(bottom: 90),
                  child: ListView(
                    reverse: true,
                    children: snapshot.data.docs.map((DocumentSnapshot document) {
                      Map<String,dynamic> data = document.data() as Map<String, dynamic>;
                      return Container(
                        padding: EdgeInsets.only(left: 16, right: 16, top: 10, bottom: 10),
                        child: Align(
                          alignment: (data["username"] != this.name ? Alignment.topLeft : Alignment.topRight),
                          child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: (data["username"] != this.name ? Colors.grey.shade200 : Colors.blue[200]),
                                  boxShadow: [
                                    BoxShadow(
                                      color: (data["username"] != this.name ? Colors.grey : Colors.blue[400]),
                                      blurRadius: 3,
                                      offset: (data["username"] != this.name ? Offset(-2, 4) : Offset(2, 4) )
                                    )
                                  ]
                              ),
                              padding: EdgeInsets.all(16),
                              child: Column(
                                crossAxisAlignment: (data["username"] != this.name ? CrossAxisAlignment.start : CrossAxisAlignment.end),
                                children: [
                                  Text(data["username"], style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                                  Text(data["message"], style: TextStyle(fontSize: 15))
                                ],
                              )
                          ),
                        ),
                      );
                    }).toList(),
                  )
                );
              }
          )



    ]
      ),


    );
  }

}
