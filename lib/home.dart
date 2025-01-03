import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {}),
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: SizedBox(
        child: Column(
          children: [
            const Text('0'),
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return const Text('1');
                }
              ),
            ),
          ],
        ),
      ),

    );
  }
}