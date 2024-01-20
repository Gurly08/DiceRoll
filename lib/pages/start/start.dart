import 'package:flutter/material.dart';
import 'package:udm/pages/start/widget/gradientcontainer.dart';

class Start extends StatelessWidget {
  const Start({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          Colors.deepPurple,
          Colors.lightBlue,
        )
      ),
    );
  }
}
