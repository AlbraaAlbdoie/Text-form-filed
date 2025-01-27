import 'package:flutter/material.dart';

class textformfield extends StatefulWidget {
  const textformfield({super.key});

  @override
  State<textformfield> createState() => _TodopageState();
}

class _TodopageState extends State<textformfield> {
  TextEditingController mycontroller = TextEditingController();
  String hello = "";
  

  void hellouser() {
    String username = mycontroller.text;
    setState(() {
      hello = ('Hello : ' + username);
    });
    ;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber[300],
        title: Text('Text Form Filed'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              hello,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.amber[800]),
            ),
            SizedBox(
              height: 50,
            ),
            TextFormField(
              controller: mycontroller,
              decoration: InputDecoration(
                  hintText: "Enter your Name..",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
            ElevatedButton(onPressed: hellouser, child: Text('Save'))
          ],
        ),
      ),
    );
  }
}
