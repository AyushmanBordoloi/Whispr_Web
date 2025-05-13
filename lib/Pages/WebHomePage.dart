import 'package:flutter/material.dart';
import 'package:whispr_web/Widgets/Divider.dart';
import 'package:whispr_web/Widgets/MainInfo.dart';
import 'package:whispr_web/Widgets/Screenshot.dart';
import 'package:whispr_web/Widgets/WebFeaturesWidget.dart';

class WebHomePage extends StatelessWidget {
  const WebHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // final w = MediaQuery.of(context).size.width;
    // final h = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(10),
          child: Image.asset("assets/Photos/logo.png", fit: BoxFit.contain),
        ),
        title: Text("Whispr", style: TextStyle(fontWeight: FontWeight.bold)),
        actions: [
          ElevatedButton.icon(
            onPressed: () {},
            icon: Icon(Icons.download, color: Colors.white),
            label: Text(
              'Download App',
              style: TextStyle(color: Theme.of(context).colorScheme.onSurface),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(40),
        child: SingleChildScrollView(
          child: Column(
            children: [
              MainInfo(),
              SizedBox(height: 40),
              MyDivider(),
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Features",
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.onSurface,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  WebFeatureTile(
                    icon: Icons.info,
                    title: "Easy to use",
                    description:
                        "Whispr is an easy to use chatting application where you can connect with each other.",
                  ),
                  WebFeatureTile(
                    icon: Icons.message,
                    title: "Real time messaging",
                    description:
                        "Chat with friends in real-time with a smooth and responsive chat interface.",
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  WebFeatureTile(
                    icon: Icons.call,
                    title: "Voice & Video Calls",
                    description:
                        "Connect with your friends with reliable and high-quality voice and video call support.",
                  ),
                  WebFeatureTile(
                    icon: Icons.security,
                    title: "Secure & Private",
                    description:
                        "Your messages and calls are protected securely ensuring conversations stay private.",
                  ),
                ],
              ),
              SizedBox(height: 80),
              MyDivider(),
              SizedBox(height: 40),
              ScreenshotPage(),
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Text('End of Page')],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
