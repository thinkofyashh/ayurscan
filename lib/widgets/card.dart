import 'package:ayurscan/widgets/cards.dart';
import 'package:ayurscan/widgets/categoryclip.dart';
import 'package:ayurscan/widgets/quickaccess.dart';
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
                "Featured or Popular Plants",
                style: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.start,
              ),
            ),
            const PlantCard(),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Text(
                "Categories or Filters",
                style: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.start,
              ),
            ),
            const Clips(),
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: Text(
                "Quick Access",
                style: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.start,
              ),
            ),
            const QuickAccess()

          ],
        )
      ],
    );
  }
}
