import 'package:flutter/material.dart';

class Clips extends StatelessWidget {
  const Clips({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.0,
      width: double.infinity,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.0),
            child: Chip(
              label: const Text(
                "All",
                style: TextStyle(color: Colors.white),
              ),
              backgroundColor: Colors.green,
              padding: EdgeInsets.only(left: 12.0, right: 12.0),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.0),
            child: Chip(
              label: const Text(
                "Herbs",
                style: TextStyle(color: Colors.white),
              ),
              backgroundColor: Colors.green,
              padding: EdgeInsets.only(left: 12.0, right: 12.0),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.0),
            child: Chip(
              label: const Text(
                "Trees",
                style: TextStyle(color: Colors.white),
              ),
              backgroundColor: Colors.green,
              padding: EdgeInsets.only(left: 12.0, right: 12.0),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.0),
            child: Chip(
              label: const Text(
                "Flowers",
                style: TextStyle(color: Colors.white),
              ),
              backgroundColor: Colors.green,
              padding: EdgeInsets.only(left: 12.0, right: 12.0),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.0),
            child: Chip(
              label: const Text(
                "Shrubs",
                style: TextStyle(color: Colors.white),
              ),
              backgroundColor: Colors.green,
              padding: EdgeInsets.only(left: 12.0, right: 12.0),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.0),
            child: Chip(
              label: const Text(
                "Cacti",
                style: TextStyle(color: Colors.white),
              ),
              backgroundColor: Colors.green,
              padding: EdgeInsets.only(left: 12.0, right: 12.0),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.0),
            child: Chip(
              label: const Text(
                "Fruits",
                style: TextStyle(color: Colors.white),
              ),
              backgroundColor: Colors.green,
              padding: EdgeInsets.only(left: 12.0, right: 12.0),
            ),
          ),
        ],
      ),
    );
  }
}

