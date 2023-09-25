import 'package:flutter/material.dart';

class PlantCard extends StatelessWidget {
  const PlantCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal, // Set the scroll direction here
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Plant("Holy Basil", "assets/images/holybasil.jpg"),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Plant("Money Plant", "assets/images/MoneyPlant.jpg"),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Plant("Shame Plant", "assets/images/shameplant.jpg"),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Plant("Wood Apple", "assets/images/woodapple.jpg"),
            ),
          ],
        ),
      ),
    );
  }
}

Widget Plant(String plantname, String imgpath) {
  return InkWell(
    onTap: () {},
    child: Column(
      children: [
        Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
          elevation: 0.0,
          child: Image.asset(
            imgpath,
            fit: BoxFit.fill,
            width: 130.0,
            height: 160.0,
          ),
        ),
        const SizedBox(
          height: 5.0,
        ),
        Text(
          plantname,
          style: const TextStyle(
              color: Colors.green, fontWeight: FontWeight.bold, fontSize: 20.0),
          textAlign: TextAlign.center, // Center the text
        ),
      ],
    ),
  );
}
