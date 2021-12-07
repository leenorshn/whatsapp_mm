import 'package:flutter/material.dart';

class SingleMessage extends StatelessWidget {
  const SingleMessage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //leading: Container(),
        title: const Text("chat"),
      ),
    );
  }
}
