import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

final firebase = FirebaseAuth.instance;

class AuthScreen extends StatefulWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  var islogin = true;
  final formkey = GlobalKey<FormState>();
  var emailaddress = " ";
  var password = " ";

  void submit() async {
    final isvalid = formkey.currentState!.validate();
    if (!isvalid) {
      return;
    }
    formkey.currentState!.save();

    if (islogin) {
      // login in mode
      try {
        final usercredentials = await firebase.signInWithEmailAndPassword(
            email: emailaddress, password: password);
      } on FirebaseAuthException catch (error) {
        ScaffoldMessenger.of(context).clearSnackBars();
        ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(error.message ?? 'Authentication Failed')));
      }
    } else {
      // sign up mode
      try {
        final usercredentials = await firebase.createUserWithEmailAndPassword(
            email: emailaddress, password: password);
      } on FirebaseAuthException catch (error) {
        ScaffoldMessenger.of(context).clearSnackBars();
        ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(error.message ?? 'Authentication Failed')));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: Stack(
        children: [
          Image.asset(
            "assets/images/sys.jpeg",
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    margin: const EdgeInsets.only(
                      top: 30,
                      bottom: 10,
                      left: 20,
                      right: 20,
                    ),
                    width: 300,
                    child: Image.asset("assets/images/ayurscan.png"),
                  ),
                  Card(
                    margin: const EdgeInsets.all(10),
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Form(
                        key: formkey,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            TextFormField(
                                decoration: const InputDecoration(
                                  labelText: 'Email Address',
                                ),
                                keyboardType: TextInputType.emailAddress,
                                autocorrect: false,
                                textCapitalization: TextCapitalization.none,
                                onSaved: (value) {
                                  emailaddress = value!;
                                },
                                validator: (value) {
                                  if (value == null ||
                                      value.trim().isEmpty ||
                                      !value.contains("@")) {
                                    return "Please enter the valid email Address";
                                  }
                                  return null;
                                }),
                            TextFormField(
                              decoration: const InputDecoration(
                                labelText: 'Password',
                              ),
                              autocorrect: false,
                              obscureText: true,
                              onSaved: (value) {
                                password = value!;
                              },
                              validator: (value) {
                                if (value == null || value.trim().length < 6) {
                                  return "Password must be 6 characters long.";
                                }
                                return null;
                              },
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            ElevatedButton(
                                onPressed: submit,
                                child: Text(islogin ? "Login" : "Signup")),
                            TextButton(
                                onPressed: () {
                                  setState(() {
                                    islogin = !islogin;
                                  });
                                },
                                child: Text(islogin
                                    ? "Create an Account"
                                    : "I Already have an account"))
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
