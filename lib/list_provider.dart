
// this class uses inheritance
import 'package:flutter/material.dart';

class NumbersListProvider extends ChangeNotifier {

  List<int> numbers = [1,2,3,4]; 

  void add(){
    int last = numbers.last;
    numbers.add(last+1);
    notifyListeners(); 
    //which ever widget is listening to this class 
    //it will notifier the users about the change that
    //occured in different widget
  }
  
  

}