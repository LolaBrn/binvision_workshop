import 'package:flutter/material.dart';

class EditScreen extends StatelessWidget {
  const EditScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Réglage')),
      body: const Center(
        child: Text('Ceci est l\'écran Réglage'),
      ),
    );
  }
}