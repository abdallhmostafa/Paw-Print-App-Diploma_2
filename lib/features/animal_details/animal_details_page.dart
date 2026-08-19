import 'package:flutter/material.dart';
import 'package:paw_print_app_2/features/home/model/animal_model.dart';

class AnimalDetailsPage extends StatelessWidget {
  const AnimalDetailsPage({super.key, required this.animalModel});
  final AnimalModel animalModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(animalModel.image),

            const AnimalDetailsBodySection(),
          ],
        ),
      ),
    );
  }
}

class AnimalDetailsBodySection extends StatelessWidget {
  const AnimalDetailsBodySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(children: [Text("Buddy"), Text("Golden Retriever")]),
              Column(children: [Text("150 EGP"), Text("Adoption Fee")]),
            ],
          ),
          const SizedBox(height: 20),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Card(
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Column(children: [Text("Age"), Text("4 Months")]),
                ),
              ),
              Card(
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Column(children: [Text("Age"), Text("4 Months")]),
                ),
              ),
              Card(
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Column(children: [Text("Age"), Text("4 Months")]),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),

          const Text("Pet Info"),
          const SizedBox(height: 20),

          Wrap(
            spacing: 16,
            children: [
              ActionChip(
                onPressed: () {},
                label: const Text("Vaccinated"),
                avatar: const Icon(Icons.vertical_shades_outlined),
              ),
              ActionChip(
                onPressed: () {},
                label: const Text("Friendly"),
                avatar: const Icon(Icons.pets),
              ),
              ActionChip(
                onPressed: () {},
                label: const Text("House Trained"),
                avatar: const Icon(Icons.home),
              ),
              ActionChip(
                onPressed: () {},
                label: const Text("Good with Cats"),
                avatar: const Icon(Icons.animation_outlined),
              ),
            ],
          ),
          const SizedBox(height: 20),

          const Text("About Buddy"),
          const SizedBox(height: 12),

          const Text(
            "Buddy is an energetic and loving Golden Retriever puppy looking for his forever home! He loves to play fetch, go for short walks, and cuddle on the couch. He is currently learning basic commands and doing great with his potty training. Buddy would thrive in an active home with lots of love to give.",
          ),
          const SizedBox(height: 20),

          ListTile(
            tileColor: Colors.orangeAccent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.circular(20),
            ),
            onTap: () {},

            leading: const Icon(Icons.shopify_rounded),
            title: const Text(" Happy Paws Rescue"),
            subtitle: const Text("2.5 miles away"),
            trailing: const Icon(Icons.phone),
          ),
          const SizedBox(height: 20),

          ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
            ),

            onPressed: () {},
            label: const Text("Adopt Buddy"),
            icon: const Icon(Icons.pets),
          ),
          const SizedBox(height: 40),
        ],
      ),
    );
  }
}
