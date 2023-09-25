import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:ayurscan/widgets/card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              onPressed: () {
                FirebaseAuth.instance.signOut();
              },
              icon: const Icon(Icons.exit_to_app_sharp),
              color: Theme.of(context).colorScheme.primary,
            )
          ],
          title: Text(
            "AyurScan",
            style: TextStyle(color: Theme.of(context).colorScheme.primary),
          ),
        ),
        body:const Cards() );
  }
}
