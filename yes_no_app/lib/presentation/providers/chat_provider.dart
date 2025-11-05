import 'package:flutter/material.dart';
import 'package:yes_no_app/domain/entity/message.dart';

class ChatProvider extends ChangeNotifier{
  List<Message> messageList=[
    Message(text: "Hola tú!",fromWho: FromWho.mine),
    Message(text: "Ya regresaste de la escuela???",fromWho: FromWho.mine),
    Message(text: "Ya regresaste de la escuela???",fromWho: FromWho.mine)
  ];

  Future<void> sendMessage(String text) async{
    //TODO: implementar método
  }

}