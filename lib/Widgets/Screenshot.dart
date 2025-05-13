import 'package:flutter/material.dart';

class ScreenshotPage extends StatelessWidget {
  const ScreenshotPage({super.key});

  @override
  Widget build(BuildContext context) {
    var images = [
      "assets/Photos/Welcome.png",
      "assets/Photos/Login.png",
      "assets/Photos/Home Page.png",
      "assets/Photos/Chat.png",
      "assets/Photos/Profile.png",
      "assets/Photos/New Chat.png",
      "assets/Photos/New Contact.png",
      "assets/Photos/Your Profile.png",
      "assets/Photos/Call.png",
    ];
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Whispr Screenshots",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.onSurface,
              ),
            ),
          ],
        ),
        SizedBox(height: 40),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children:
                images.map((e) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Image.asset(e, height: 600, fit: BoxFit.contain),
                  );
                }).toList(),
          ),
        ),
      ],
    );
  }
}
