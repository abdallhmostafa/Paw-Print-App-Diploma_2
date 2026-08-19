import 'dart:developer';

import 'package:flutter/material.dart';

class HomeCategory extends StatelessWidget {
  const HomeCategory({super.key});

  @override
  Widget build(BuildContext context) {
    log("This from the Build Method in The Catergory");
    return SingleChildScrollView(
      padding: const EdgeInsets.all(20),
      scrollDirection: Axis.horizontal,
      child: Row(
        spacing: 12,
        children: [
          // built in widget in flutter
          ChoiceChip(
            label: const Text("All Pets"),
            onSelected: (value) {},
            selected: true,
            backgroundColor: const Color(0xFFFF914D),
          ),
          ChoiceChip(label: const Text("Cats"), selected: false, onSelected: (v) {}),
          ChoiceChip(label: const Text("Dogs"), selected: false, onSelected: (v) {}),
          ChoiceChip(
            label: const Text("Rabbits"),
            selected: false,
            onSelected: (v) {},
          ),
          ChoiceChip(label: const Text("Memo"), selected: false, onSelected: (v) {}),

          ChoiceChip(label: const Text("Memo"), selected: false, onSelected: (v) {}),
          ChoiceChip(label: const Text("Memo"), selected: false, onSelected: (v) {}),
        ],
      ),
    );
  }
}
