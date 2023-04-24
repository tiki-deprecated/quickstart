import 'package:flutter/material.dart';
import 'package:tiki_sdk_flutter/tiki_sdk.dart';

Future<void> main() async {
  await TikiSdk.config()
      .offer
      .reward(Image.asset("assets/images/reward.png"))
      .ptr("test_offer")
      .bullet("Learn how our ads perform ", true)
      .bullet("Reach you on other platforms", false)
      .bullet("Sold to other companies", false)
      .use([LicenseUsecase.custom("customUsecase")], destinations: [""])
      .tag(TitleTag.deviceId())
      .description(
          "Trade your IDFA (kind of like a serial # for your phone) for a discount.")
      .terms("assets/terms.md")
      .duration(const Duration(days: 365))
      .add()
      .initialize("f3dbd181-1273-4be7-8a56-a9d258feccda", "test_user_123");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        title: 'TIKI Quickstart', home: Scaffold(body: HomePage()));
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
          Image.asset("assets/images/doc-logo.png"),
          const Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0),
              child: Text("Let's do this shit")),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor:
                    const Color(0xFF1C0000), // background (button) color
                foregroundColor:
                    const Color(0xFFFFCC33), // foreground (text) color
              ),
              onPressed: () => TikiSdk.present(context),
              child: const Text("Show Offer"))
        ]));
  }
}
