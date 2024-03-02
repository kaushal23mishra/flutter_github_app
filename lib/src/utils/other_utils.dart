import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


String capitalizeFirstLetter(String text) {
  if (text.isEmpty) {
    return text;
  }
  return text[0].toUpperCase() + text.substring(1);
}


Future<bool> copyToClipboard(String text, BuildContext context) async {
  try {
    await Clipboard.setData(ClipboardData(text: text));
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text("URL copied"),
      ),
    );
    return true; // Operation succeeded
  } catch (e) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text("Failed to copy URL"),
      ),
    );
    return false; // Operation failed
  }
}
