import 'package:flutter/material.dart';
import 'package:numbers_dont_lie/list_provider.dart';
import 'package:provider/provider.dart';

class Second extends StatefulWidget {
  
  const Second({super.key, });

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
  @override
  Widget build(BuildContext context) {
    return Consumer<NumbersListProvider>(
        builder:((context, numbersListProvider, child) => Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          numbersListProvider.add();
        },
        child: Icon(Icons.add,
          color: Colors.white,
        ),
        backgroundColor: Colors.blue,
      ),
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text('Second Screen',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      body: SizedBox(
          child: Column(
            children: [
              Text(numbersListProvider.numbers.last.toString(),
                      style: const TextStyle(
                        fontSize: 30,
                      ),),
              Container(
                height: 200,
                width: double.maxFinite,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: numbersListProvider.numbers.length,
                  itemBuilder: (context, index) {
                    return Text(
                      numbersListProvider.numbers[index].toString(),
                      style: const TextStyle(
                        fontSize: 30,
                      ),
                    );
                  }
                ),
              ),
            ],
          ),
        ),
      )),

    );
  }
}