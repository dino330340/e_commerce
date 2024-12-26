import 'package:flutter/material.dart';

void ShowAboutDialogBox(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text("About"),
        content: Text(
          "This is a sample application demonstrating a dialog box.",
          style: TextStyle(color: Colors.black, fontSize: 14),
        ),
        backgroundColor: Colors.grey[300],
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop(); // Close the dialog
            },
            child: Text(
              "Close",
              style: TextStyle(color: Colors.black),
            ),
          ),
        ],
      );
    },
  );
}
