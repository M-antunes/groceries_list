import 'package:flutter/material.dart';

enum SnackBarType { success, error, none }
SnackBar getAppSnackBar({
  VoidCallback? onClose,
  SnackBarType type = SnackBarType.none,
  required String message,
}) {
  return SnackBar(
    content: Text(message),
    duration: const Duration(seconds: 4),
    backgroundColor: type == SnackBarType.error
        ? Colors.red[300]
        : (type == SnackBarType.success ? Colors.teal : Colors.grey[600]),
    action: SnackBarAction(
      label: '',
      textColor: Colors.black,
      onPressed: () => onClose,
    ),
  );
}
