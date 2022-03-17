import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';

class ChatMessage {
  String username;
  String message;
  Timestamp timestamp;
  ChatMessage({@required this.username, @required this.message, @required this.timestamp});
}