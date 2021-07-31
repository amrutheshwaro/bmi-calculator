import 'package:flutter/material.dart';

import '../constants.dart';

class ProjectScaffold extends StatelessWidget {
  final Widget bodyWidget;

  ProjectScaffold({@required this.bodyWidget});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kMainBackgroundColor,
      appBar: AppBar(
        title: Text(
          'BMI Calculator',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0),
        ),
        backgroundColor: kMainBackgroundColor,
      ),
      body: bodyWidget,
    );
  }
}
