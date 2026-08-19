import 'package:flutter/material.dart';
import 'package:paw_print_app_2/features/home/components/animal_card.dart';
import 'package:paw_print_app_2/features/home/components/home_category.dart';
import 'package:paw_print_app_2/features/home/model/animal_model.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        titleTextStyle: const TextStyle(
          color: Color(0xFF9B4500),
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
        title: const Text("PawPrint"),
      ),
      drawer: const Drawer(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const HomeCategory(),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "Find a friend",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 20),

          Expanded(
            // height
            // width
            child: GridView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              itemCount: animals.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 12,
                mainAxisSpacing: 16,
                childAspectRatio: 0.4,
              ),
              // 2
              itemBuilder: (context, index) =>
                  AnimalCard(animalModel: animals[index]), // pass Constructor
            ),
          ),
        ],
      ),
    );
  }
}
