import 'package:flutter/material.dart';

    class PageHome extends StatelessWidget {
      const PageHome({Key? key}) : super(key: key);

      @override
      Widget build(BuildContext context) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Home'),
            centerTitle: true,
            leading: Icon(Icons.favorite),
            actions: [
              Icon(Icons.golf_course),
              Icon(Icons.access_alarm),
              Icon(Icons.directions),
              Icon(Icons.accessibility_outlined)
            ],
          ),
          body: Text('Hello n°3'),
          backgroundColor: Colors.blueAccent,
          
        );
      }

    }