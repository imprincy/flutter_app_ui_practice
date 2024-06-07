import 'package:flutter/material.dart';

class TapNavigation extends StatelessWidget {
  const TapNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Tap Navigation"),
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'splashScreen');
                    },
                    child: const Text("Astro Talk")),
                ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'appScreen');
                    },
                    child: const Text("Gpay UI screen")),
              ],
            ), Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'stay');
                    },
                    child: const Text("Stay Screen")),
                ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'facebook');
                    },
                    child: const Text("FaceBook Screen")),
              ],
            ),Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'home');
                    },
                    child: const Text("Home Screen")),
                ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'increment');
                    },
                    child: const Text("Increment Screen")),
              ],
            ),Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'screen');
                    },
                    child: const Text("Screen")),
                ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'ppi');
                    },
                    child: const Text("Api Call Screen")),
              ],
            ),Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'screening');
                    },
                    child: const Text("Screening")),
                ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'teacher');
                    },
                    child: const Text("Teacher Data")),
              ],
            ),Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'pokemon');
                    },
                    child: const Text("Pokemon Api")),
                ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'cat');
                    },
                    child: const Text("Cat Api")),
              ],
            )
          ],
        ));
  }
}
