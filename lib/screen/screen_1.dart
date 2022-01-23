import 'package:crewbella_task/screen/screen_2.dart';
import 'package:flutter/material.dart';

class ScreenOne extends StatelessWidget {
   ScreenOne({ Key? key }) : super(key: key);
   static const String routeName = '/ScreenOne';
  final TextEditingController _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen One'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children:  <Widget>[
           TextField(
             controller: _textController,
             decoration:const InputDecoration(
               hintText: 'Enter some text',
             ),
           ),
           const SizedBox(height: 20),
            ElevatedButton( onPressed: () {
              Navigator.pushNamed(context, ScreenTwo.routeName, arguments: _textController.text);
             },
           child: const Text('Go to screen two'),),         
          ],
        ),
      ),
    );
  }
}