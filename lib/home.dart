import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<int> numbers = [1,2,3,4]; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          int last = numbers.last;
          setState(() {
            numbers.add(last+1);
          });
        },
        child: Icon(Icons.add,
          color: Colors.white,
        ),
        backgroundColor: Colors.blue,
      ),
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: SizedBox(
        child: Column(
          children: [
            Text(numbers.last.toString(),
                    style: const TextStyle(
                      fontSize: 30,
                    ),),
            Expanded(
              child: ListView.builder(
                itemCount: numbers.length,
                itemBuilder: (context, index) {
                  return Text(
                    numbers[index].toString(),
                    style: const TextStyle(
                      fontSize: 30,
                    ),
                  );
                }
              ),
            ),
            ElevatedButton(
              onPressed: () {

              }, child: Text('Next Page'),
              ),
          ],
        ),
      ),

    );
  }
}