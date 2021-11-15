import 'package:flutter/material.dart';

class ErrorView extends StatelessWidget {
  const ErrorView({required this.error});

  final Object error;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        error.toString(),
      ),
    );
  }
}
