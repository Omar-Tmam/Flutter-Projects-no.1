import 'package:chatapp/models/message.dart';
import 'package:flutter/material.dart';

class ChatPupple extends StatelessWidget {
  const ChatPupple({super.key, required this.message});
  final Message message;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        padding: EdgeInsets.only(left: 16, top: 24, bottom: 24, right: 24),
        margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(32),
              bottomLeft: Radius.circular(32),
              topRight: Radius.circular(32)),
          gradient: LinearGradient(
            colors: [
              Colors.pink.shade100,
              Colors.orange.shade100
            ], // Gradient Colors
            begin: Alignment.topLeft, // Start Position
            end: Alignment.bottomRight, // End Position
          ),
        ),
        child: Text(
          message.message,
          style: TextStyle(
              color: Colors.black, fontFamily: 'Ubuntu', fontSize: 18),
        ),
      ),
    );
  }
}

class ChatPuppleForFriend extends StatelessWidget {
  const ChatPuppleForFriend({super.key, required this.message});
  final Message message;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        padding: EdgeInsets.only(left: 16, top: 24, bottom: 24, right: 24),
        margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(32),
              topRight: Radius.circular(32),
              bottomRight: Radius.circular(32)),
          gradient: LinearGradient(
            colors: [
              Colors.blue.shade100,
              Colors.teal.shade100,
            ], // Gradient Colors
            begin: Alignment.topLeft, // Start Position
            end: Alignment.bottomRight, // End Position
          ),
        ),
        child: Text(
          message.message,
          style: TextStyle(
              color: Colors.black, fontFamily: 'Ubuntu', fontSize: 18),
        ),
      ),
    );
  }
}
