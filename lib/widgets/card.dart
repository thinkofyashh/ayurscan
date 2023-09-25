import 'package:ayurscan/widgets/cards.dart';
import 'package:flutter/material.dart';
import 'package:ayurscan/widgets/plantcard.dart';

class Cards extends StatelessWidget {
  const Cards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          "assets/images/sys.jpeg",
          fit: BoxFit.cover,
          height: double.infinity,
          width: double.infinity,
        ),
        Column(
          children: [
            const CardLayout(),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Text(
                "Featured or Popular plants",
                style: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.start,
              ),
            ),const PlantCard()

          ],
        )
      ],
    );
  }
}
