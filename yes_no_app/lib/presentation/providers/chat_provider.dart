import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:yes_no_app/config/theme/helpers/get_yes_no_answer.dart';
import 'package:yes_no_app/domain/entity/message.dart';
import 'package:yes_no_app/presentation/widgets/her_message_bubble.dart';

class ChatProvider extends ChangeNotifier{

  final ScrollController chatScrollController=ScrollController(); //Me va a permitir tener el control de un único scroll
  final GetYesNoAnswer getYesNoAnswer=GetYesNoAnswer();

  List<Message> messageList=[
    Message(text: "Hola tú!",fromWho: FromWho.mine),
    Message(text: "Ya regresaste de la escuela???",fromWho: FromWho.mine),
    Message(text: "Ya regresaste de la escuela???",fromWho: FromWho.mine)
  ];

  Future<void> sendMessage(String text) async{
    if(text.isEmpty) return;
    final newMessage=Message(text:text,fromWho:FromWho.mine);
    messageList.add(newMessage);
    if(text.endsWith("?")){
      herReply();
    }
    notifyListeners();

    SchedulerBinding.instance.addPostFrameCallback((_){
      moveScrollToBottom();
    });
    
  }

  Future<void> herReply() async{
    final herMessage=await getYesNoAnswer.getAnswer();
    messageList.add(herMessage);
    notifyListeners();

    moveScrollToBottom();
  }

  Future<void> moveScrollToBottom() async{
    await Future.delayed(const Duration(milliseconds: 100));
    chatScrollController.animateTo(
      chatScrollController.position.maxScrollExtent,
      duration: Duration(milliseconds: 300),
      curve: Curves.easeOut);
  }

}