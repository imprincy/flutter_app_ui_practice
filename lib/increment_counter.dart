import 'package:flutter/material.dart';

class Increment extends StatefulWidget {
  const Increment({super.key});

  @override
  State<Increment> createState() => _IncrementState();
}

class _IncrementState extends State<Increment> {
  int counter = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    addition();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 7,
        backgroundColor: Colors.indigo.shade200,
        title: const Center(child: Text("Test")),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Increment the counter",
              style: TextStyle(fontSize: 20),
            ),
            Text("Increment is- $counter")
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: addition,
          child: const Icon(Icons.add),
          tooltip: 'abc d'),
    );
  }

  void addition() {
    setState(() {
      counter++;
    });
  }
}
