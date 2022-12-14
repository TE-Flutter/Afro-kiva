import 'package:flutter/material.dart';

class SavedForLater extends StatelessWidget {
  const SavedForLater({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: Icon(Icons.more_vert_rounded),
          ),
        ],
      ),
    );
  }
}
