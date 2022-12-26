import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  void _showDatePicker(BuildContext context) {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2025),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [

          SizedBox(
            height: 40,
          ),

          TextField(
            autofocus: false,
            style: const TextStyle(fontSize: 15.0, color: Colors.black),
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'Search vehicle',
              hintStyle: TextStyle(height: 1.9),
              filled: true,
              fillColor: Colors.white,
              contentPadding:
              const EdgeInsets.only(left: 14.0, bottom: 6.0, top: 8.0),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
                borderRadius: BorderRadius.circular(10.0),
              ),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
          ),

          SizedBox(
            height: 20,
          ),
          TextField(
            autofocus: false,
            onTap: () {
              _showDatePicker(context);
            },
            style: const TextStyle(fontSize: 15.0, color: Colors.black),
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'Start Date',
              filled: true,
              fillColor: Colors.white,
              contentPadding:
              const EdgeInsets.only(left: 14.0, bottom: 6.0, top: 8.0),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.white),
                borderRadius: BorderRadius.circular(10.0),
              ),
              enabledBorder: UnderlineInputBorder(
                borderSide: const BorderSide(color: Colors.white),
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
          ),

          SizedBox(
            height: 20,
          ),
          TextField(
            autofocus: false,
            onTap: () {
              _showDatePicker(context);
            },
            style: const TextStyle(fontSize: 15.0, color: Colors.black),
            decoration: InputDecoration(
              border: InputBorder.none,
              labelText: "End Date",
              filled: true,
              fillColor: Colors.white,
              contentPadding:
              const EdgeInsets.only(left: 14.0, bottom: 6.0, top: 8.0),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.white),
                borderRadius: BorderRadius.circular(10.0),
              ),
              enabledBorder: UnderlineInputBorder(
                borderSide: const BorderSide(color: Colors.white),
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
          ),
        ],
      )

    );
  }
}
