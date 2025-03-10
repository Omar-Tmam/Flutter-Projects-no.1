import 'package:chatapp/firebase_options.dart';
import 'package:chatapp/views/chat_view.dart';
import 'package:chatapp/views/login_view.dart';
import 'package:chatapp/views/signup_view.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const ChatApp());
}

class ChatApp extends StatelessWidget {
  const ChatApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        'LoginView':(context)=>LoginView(),
        'SignupView':(context)=>SignupView(),
        'ChatView':(context)=>ChatView()
      },
      debugShowCheckedModeBanner: false,
      initialRoute: 'LoginView'
    );
  }
}
