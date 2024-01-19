import 'package:flutter/material.dart';

class ToDoPage extends StatefulWidget {
  const ToDoPage({super.key});

  @override
  State<ToDoPage> createState() => _ToDoPageState();
}

class _ToDoPageState extends State<ToDoPage> {
//text editing controller
  TextEditingController myController = TextEditingController();

  //greeting message variable
  String greetMessage = "";

  //greet user
  void greetUser() {
    String username = myController.text;
    setState(() {
          greetMessage = "Hello, " + username;

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //greet user message
            Text(greetMessage),
            //text field
            TextField(
              controller: myController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Type your name...",
              ),
            ),
            //button
            ElevatedButton(onPressed: greetUser, child: Text("Tap"))
          ],
        ),
      )),
    );
  }
}
