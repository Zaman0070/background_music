import 'package:flutter/material.dart';
import 'package:media_player/app/utils/themes/styles_manager.dart';

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Text(
          'ERROR HERE',
          style: getBoldStyle(fontSize: 17 ,color: Theme.of(context).colorScheme.error),
        ),
      ),
    );
  }
}