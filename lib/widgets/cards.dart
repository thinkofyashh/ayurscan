import 'package:flutter/material.dart';
class CardLayout extends StatelessWidget {
  const CardLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.all(12.0),

          child: SizedBox(
            width: 160,
            height: 160,
            child: Card(
              elevation: 2.0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 10.0,
                    ),
                    Image.asset(
                      "assets/images/camera-2.png",
                      width: 64.0,
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Text(
                      "Camera",
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.primary,
                          fontSize: 20.0),
                    )
                  ],
                ),
              ),
            ),
          ),

        ),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: SizedBox(
            width: 160,
            height: 160,
            child: Card(
              elevation: 2.0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Image.asset(
                      "assets/images/g.png",
                      width: 74.0,
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Text(
                      "Gallery",
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.primary,
                          fontSize: 20.0),
                    )
                  ],
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
