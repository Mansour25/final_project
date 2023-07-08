import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:final_project/core/firebase_exception.dart';
import 'package:final_project/homePage.dart';
import 'package:final_project/register_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
// import 'dart:html';

class LogInPage extends StatefulWidget {
  const LogInPage({super.key});

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  signIn() async {
    try {
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(
              email: _emailController.text, password: _passwordController.text)
          .then((value) {
        AwesomeDialog(
          context: context,
          dialogType: DialogType.success,
          animType: AnimType.rightSlide,
          title: 'تم تسجيل الدخول بنجاح',
          titleTextStyle: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
          autoHide: Duration(milliseconds: 1000),
        ).show().then((value) {
          Navigator.pushReplacement(context, MaterialPageRoute(
            builder: (context) {
              return homePage();
            },
          ));
        });
      });
    } on FirebaseAuthException catch (e) {
      AwesomeDialog(
        context: context,
        dialogType: DialogType.info,
        animType: AnimType.rightSlide,
        title: formatFirebaseAuthException(e).toString(),
        titleTextStyle: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
        autoHide: Duration(milliseconds: 1200),
      ).show();
      // ScaffoldMessenger.of(context).showSnackBar(
      //   SnackBar(
      //     content: Text(
      //       AuthFirebaseException.handleException(e).toString(),
      //     ),
      //   ),
      // );
    }
  }

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 237, 236, 236),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/mapLogo.png",
              height: 180,
            ),
            Text(
              "Welcome Dear",
              style: TextStyle(
                  fontSize: 30, color: Color.fromARGB(255, 4, 59, 153)),
            ),
            SizedBox(
              height: 50,
            ),

            // user name __________________________________________________________
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: TextField(
                  controller: _emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.all(5),
                    hintTextDirection: TextDirection.ltr,
                    icon: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.person,
                          size: 23, color: Color.fromARGB(255, 4, 59, 153)),
                    ),
                    labelText: "Email",
                    hintText: ("Enter your email"),
                    hintStyle: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            ),

            // Password __________________________________________________________
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12)),
                child: TextField(
                  controller: _passwordController,
                  obscureText: true,
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.all(5),
                    hintTextDirection: TextDirection.ltr,
                    icon: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.lock_open_rounded,
                          size: 23, color: Color.fromARGB(255, 4, 59, 153)),
                    ),
                    labelText: "Password",
                    hintText: ("Enter a password "),
                    hintStyle: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            ),

            // Log In __________________________________________________________
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 30, 15, 30),
              child: SizedBox(
                height: 48,
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7),
                    ),
                    backgroundColor: Color.fromARGB(255, 4, 59, 153),
                    elevation: 1,
                  ),
                  onPressed: (() {
                    signIn();
                  }),
                  child: Text(
                    "Log In",
                    style: TextStyle(
                        fontSize: 20,
                        color: Color.fromARGB(255, 237, 236, 236),
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return RegisterScreen();
                  },
                ));
              },
              child: Padding(
                padding: const EdgeInsets.fromLTRB(15, 10, 0, 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "If you are not registered! ",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      " Create a new account ...",
                      style: TextStyle(
                          color: Colors.blue[700], fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
