import 'package:flutter/material.dart';

class AboutPage extends StatefulWidget {
  @override
  _AboutPageState createState() => _AboutPageState();
}

class BaseLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/backy.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: null /* add child content here */,
      ),
    );
  }
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About'),
      ),
      body: Center(
        child: Container(
          height: 80,
          width: 150,
          decoration: BoxDecoration(
              color: Colors.blue, borderRadius: BorderRadius.circular(10)),
          child: TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(
              'About Us',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
          ),
        ),
      ),
    );
  }
}
