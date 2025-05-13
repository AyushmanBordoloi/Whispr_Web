import 'package:flutter/material.dart';
import 'package:whispr_web/Widgets/Divider.dart';
import 'package:whispr_web/Widgets/Screenshot.dart';
import 'package:whispr_web/Widgets/WebFeaturesWidgetMobile.dart';

class MobileHomePage extends StatelessWidget {
  const MobileHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
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
        padding: const EdgeInsets.all(30),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(),
                Text(
                  "WHISPR",
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
                ),
                Text(
                  "The Best App for Connecting with Friends",
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w600,
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
                ),
                const Text(
                  "App version 1.0",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w200,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(
                  width: 700,
                  child: Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam quis. ",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Theme.of(context).colorScheme.onSurface,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 30,
                        vertical: 20,
                      ),
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primary,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.android, size: 30),
                          SizedBox(width: 10),
                          Text(
                            "Download App",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 40),
            Container(
              width: w / 1.2,
              height: w / 1.2,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
                image: DecorationImage(
                  image: AssetImage("assets/Photos/Main.png"),
                ),
                shape: BoxShape.circle,
              ),
            ),
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
            Column(
              children: [
                WebFeatureTileMobile(
                  icon: Icons.info,
                  title: "Easy to use",
                  description:
                      "Whispr is an easy to use chatting application where you can connect with each other",
                ),
                SizedBox(height: 20),
                WebFeatureTileMobile(
                  icon: Icons.message,
                  title: "Real time messaging",
                  description:
                      "Chat with friends in real-time with a smooth and responsive chat interface.",
                ),
                SizedBox(height: 20),
                WebFeatureTileMobile(
                  icon: Icons.call,
                  title: "Voice & Video Calls",
                  description:
                      "Connect with your friends with reliable and high-quality voice and video call support.",
                ),
                SizedBox(height: 20),
                WebFeatureTileMobile(
                  icon: Icons.security,
                  title: "Secure & Private",
                  description:
                      "Your messages and calls are protected securely ensuring conversations stay private.",
                ),
              ],
            ),
            SizedBox(height: 40),
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
    );
  }
}
