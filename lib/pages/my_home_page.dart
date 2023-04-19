import 'package:flutter/material.dart';
import 'package:flutter_flavors_auto/flavors.dart';
import 'package:flutter_flavors_auto/utils/configuration.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final String tile = Configuration.appTitle;
    return Scaffold(
      appBar: AppBar(
        title: Text(F.title),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/logo.png',
              width: 100,
              height: 100,
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              tile,
            ),
          ],
        ),
      ),
    );
  }
}
