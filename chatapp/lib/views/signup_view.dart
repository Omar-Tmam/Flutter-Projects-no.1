// ignore_for_file: unused_local_variable

import 'package:chatapp/components/custom_button.dart';
import 'package:chatapp/components/custom_text_field.dart';
import 'package:chatapp/helper/show_snack_bar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class SignupView extends StatefulWidget {
  SignupView({super.key});

  @override
  State<SignupView> createState() => _SignupViewState();
}

class _SignupViewState extends State<SignupView> {
  String? email;

  String? password;

  GlobalKey<FormState> formKey = GlobalKey();

  bool isLoading = false;

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
                      'assets/images/registered.png',
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
                      'Sign-up',
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
                        textButton: 'Sign-up',
                        onTap: () async {
                          if (formKey.currentState!.validate()) {
                            isLoading = true;
                            setState(() {});
                            try {
                              await regUser();
                              Navigator.pushNamed(context, 'ChatView');
                            } on FirebaseAuthException catch (e) {
                              if (e.code == 'weak-password') {
                                showSnackBar(
                                    context, 'Password provided is too weak.');
                              } else if (e.code == 'email-already-in-use') {
                                showSnackBar(context, 'Email already in use.');
                              }
                            } catch (e) {
                              showSnackBar(context, 'There was an error.');
                              print(e.toString());
                            }
                            isLoading = false;
                            setState(() {});
                          } else {}
                        },
                      ),
                    ),
                    Text(
                      'Already Have An Account?',
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
                        Navigator.pop(context);
                      },
                      child: Text(
                        ' Log-in',
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

  Future<void> regUser() async {
    UserCredential user = await FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email!, password: password!);
  }
}
