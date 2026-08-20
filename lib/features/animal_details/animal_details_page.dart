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

            AnimalDetailsBodySection(animalModel: animalModel),
          ],
        ),
      ),
    );
  }
}

class AnimalDetailsBodySection extends StatelessWidget {
  const AnimalDetailsBodySection({super.key, required this.animalModel});
  final AnimalModel animalModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    animalModel.animalName,
                    style: const TextStyle(
                      fontSize: 28,
                      color: Color(0xFF231A14),
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  Text(
                    animalModel.kind,
                    style: const TextStyle(
                      fontSize: 20,
                      color: Color(0xFF564339),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "${animalModel.price}",
                    style: const TextStyle(
                      fontSize: 24,
                      color: Color(0xFF9B4500),
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  const Text(
                    "Adoption Fee",
                    style: TextStyle(
                      fontSize: 20,
                      color: Color(0xFF564339),

                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Card(
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Column(children: [Text("Age"), Text("4 Months")]),
                ),
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      const Text("Gender"),

                      if (animalModel.isMale)
                        const Text("Male")
                      else
                        const Text("Female"),
                    ],
                  ),
                ),
              ),
              const Card(
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Column(children: [Text("Age"), Text("4 Months")]),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),

          const Text(
            "Pet Info",
            style: TextStyle(
              fontSize: 20,
              color: Color(0xFF231A14),
              fontWeight: FontWeight.w900,
            ),
          ),

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

          Text(
            "About ${animalModel.animalName}",
            style: const TextStyle(
              fontSize: 20,
              color: Color(0xFF231A14),
              fontWeight: FontWeight.w900,
            ),
          ),
          const SizedBox(height: 12),

          Text(animalModel.details),
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
