// ignore_for_file: unused_local_variable

import 'package:chatapp/components/custom_button.dart';
import 'package:chatapp/components/custom_text_field.dart';
import 'package:chatapp/helper/show_snack_bar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class LoginView extends StatefulWidget {
  LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  GlobalKey<FormState> formKey = GlobalKey();

  bool isLoading = false;
  String? email;
  String? password;

  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: isLoading,
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blue, Colors.purple], // Gradient Colors
              begin: Alignment.topLeft, // Start Position
              end: Alignment.bottomRight, // End Position
            ),
          ),
          child: Center(
            child: SingleChildScrollView(
              child: Form(
                key: formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/app.png',
                      scale: 4,
                    ),
                    Text(
                      'Chat App',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 34,
                        fontFamily: 'Ubuntu',
                      ),
                    ),
                    Text(
                      'Log-in',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontFamily: 'Ubuntu',
                      ),
                    ),
                    CustomTextFormField(
                      obsecureText: false,
                      onChanged: (data) {
                        email = data;
                      },
                      hintText: 'Email',
                      labelText: 'Enter Email',
                      suffixIcon: Icon(Icons.email_outlined),
                    ),
                    CustomTextFormField(
                      obsecureText: true,
                      onChanged: (data) {
                        password = data;
                      },
                      hintText: 'Password',
                      labelText: 'Enter Password',
                      suffixIcon: Icon(Icons.password),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 32, horizontal: 16),
                      child: CustomButton(
                        textButton: 'Log-in',
                        onTap: () async {
                          if (formKey.currentState!.validate()) {
                            isLoading = true;
                            setState(() {});
                            try {
                              await logUser();
                              Navigator.pushNamed(context, 'ChatView',arguments:email);// ارجيومنت دي عشان لو معانا حاجا عايزين نبعتها للاسكرين اللي انت رايحلها عموما الارجيومينت يمكن استخدامها وانا بعمل نافيجيت لأي سكرين
                            } on FirebaseAuthException catch (e) {
                              if (e.code == 'user-not-found') {
                                showSnackBar(
                                    context, 'No user found for that email.');
                              } else if (e.code == 'wrong-password') {
                                showSnackBar(context,
                                    'Wrong password provided for that user.');
                              } else if (e.code == 'invalid-credential') {
                                showSnackBar(
                                    context, 'Invalid credential provided.');
                              }
                            } catch (e) {
                              showSnackBar(context, 'There was an error.');
                            }
                            isLoading = false;
                            setState(() {});
                          } else {}
                        },
                      ),
                    ),
                    Text(
                      'Don\'t Have An Account?',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Ubuntu',
                          fontSize: 16),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, 'SignupView' );
                      },
                      child: Text(
                        ' Sign-up',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Ubuntu',
                            fontSize: 16),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<void> logUser() async {
    UserCredential user = await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email!, password: password!);
  }
}
