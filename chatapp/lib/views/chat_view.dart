import 'package:chatapp/components/chat_pupple.dart';
import 'package:chatapp/constants.dart';
import 'package:chatapp/models/message.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

// ignore: must_be_immutable
class ChatView extends StatelessWidget {
  CollectionReference messages =
      FirebaseFirestore.instance.collection(kMessagesCollections);
  TextEditingController controller = TextEditingController();
  final ScrollController _controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    var email = ModalRoute.of(context)!
        .settings
        .arguments; //السطر دا عشان نستقبل ال ايميل من اللوج اين
    return StreamBuilder<QuerySnapshot>(
      stream: messages.orderBy(kCreatedAt, descending: true).snapshots(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List<Message> messagesList = [];
          for (int i = 0; i < snapshot.data!.docs.length; i++) {
            messagesList.add(Message.fromJson(snapshot.data!.docs[i]));
          }
          return Scaffold(
            // backgroundColor: Color(0xFFFFFBF5),
            appBar: AppBar(
              elevation: 6,
              shadowColor: Colors.black,
              automaticallyImplyLeading: false,
              centerTitle: true,
              flexibleSpace: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.blue, Colors.purple],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
              ),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/chat-bubble.png',
                    height: 60,
                    width: 40,
                  ),
                  Text(
                    ' Chat App    ',
                    style: TextStyle(fontFamily: 'Ubuntu', color: Colors.white),
                  ),
                ],
              ),
            ),
            body: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/wallpaper.jpeg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                        reverse: true,
                        controller: _controller,
                        itemCount: messagesList.length,
                        itemBuilder: (context, index) {
                          return messagesList[index].id == email
                              ? ChatPupple(
                                  message: messagesList[index],
                                )
                              : ChatPuppleForFriend(
                                  message: messagesList[index]);
                        }),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: TextField(
                      controller: controller,
                      onSubmitted: (data) {
                        sendMessages(context, data, email);
                      },
                      decoration: InputDecoration(
                        filled: true,
                        hintText: 'Send Message',
                        hintStyle: TextStyle(
                            fontFamily: 'Ubuntu',
                            fontSize: 20,
                            color: Colors.grey),
                        suffixIcon: GestureDetector(
                          onTap: () {
                            sendMessages(context, controller.text, email);
                          },
                          child: Icon(
                            Icons.send,
                            color: Colors.grey,
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide: BorderSide(color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        } else {
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }

  void sendMessages(BuildContext context, String data, Object? email) {
    if (data.isNotEmpty) {
      messages.add({kMessage: data, kCreatedAt: DateTime.now(), 'id': email});
      controller.clear();
      _controller.animateTo(
        0,
        duration: Duration(seconds: 1),
        curve: Curves.fastOutSlowIn,
      );
    } else {}
  }
}
