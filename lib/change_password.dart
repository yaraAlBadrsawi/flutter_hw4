import 'package:flutter/material.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({Key? key}) : super(key: key);

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Change password',
            style: TextStyle(fontFamily: 'Biter', color: Colors.black),
          ),
          backgroundColor: const Color(0xffffc8dd),
          leading: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
          ),
        ),
        body: getMainLayout(context),
      ),
    );
  }
}

Widget getMainLayout(BuildContext context) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      const Padding(
        padding: EdgeInsets.all(20.0),
        child: Text(
          "Enter your new password below",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontFamily: 'Biter',
              fontWeight: FontWeight.bold,
              fontSize: 22,
              color: Colors.black45),
        ),
      ),
      Column(
        children: [
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 8.0, horizontal: 14.0),
            child: getTextField("Current Password"),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 8.0, horizontal: 14.0),
            child: getTextField("New Password"),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 8.0, horizontal: 14.0),
            child: getTextField("Confirm New Password"),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xffffc8dd),
                  shape: const StadiumBorder()),
              onPressed: () {},
              child: Padding(
                padding:
                    EdgeInsets.symmetric(vertical: 18.0, horizontal: 128.0),
                child: Text(
                  'save'.toUpperCase(),
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black),
                ),
              ),
            ),
          ),
        ],
      ),
    ],
  );
}

Widget getTextField(String hint) {
  return TextField(
    decoration: InputDecoration(
      hintText: hint,
      border: OutlineInputBorder(
        borderRadius: const BorderRadius.all(
          Radius.circular(33.0),
        ),
        borderSide: BorderSide(
          color: Colors.green.withOpacity(0.5),
        ),
      ),
    ),
  );
}
