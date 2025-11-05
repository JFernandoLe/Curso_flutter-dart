import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yes_no_app/domain/entity/message.dart';
import 'package:yes_no_app/presentation/providers/chat_provider.dart';
import 'package:yes_no_app/presentation/widgets/her_message_bubble.dart';
import 'package:yes_no_app/presentation/widgets/my_message_bubble.dart';
import 'package:yes_no_app/presentation/widgets/shared/message_field_box.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:Padding(
          padding: const EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage("https://static.wikia.nocookie.net/hieloyfuego/images/2/2f/Daenerys_Targaryen_Queen.png/revision/latest/scale-to-width-down/1000?cb=20241023160006"),
          ),
        ),
        title: Text("Daenerys Targaryen")
      ),
      body: _ChatView(),
      );
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final chatProvider= context.watch<ChatProvider>(); //va a a estar pendiente de los cambios en esa instanacia de la clase
    
    return SafeArea(
      child: Column(
        children: [
          Expanded(child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: ListView.builder(
              itemCount: chatProvider.messageList.length,
              itemBuilder: (context, int index){
                final message=chatProvider.messageList[index];
                return (message.fromWho==FromWho.hers)?HerMessageBubble():MyMessageBubble(message:message);
            }),
          )
          ),
          //Caja de texto de mensajes
          const MessageFieldBox(),
        ],
      ),
    );
  }
}