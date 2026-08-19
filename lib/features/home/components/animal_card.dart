import 'package:flutter/material.dart';
import 'package:paw_print_app_2/features/animal_details/animal_details_page.dart';
import 'package:paw_print_app_2/features/home/model/animal_model.dart';

class AnimalCard extends StatelessWidget {
  const AnimalCard({super.key, required this.animalModel});
  final AnimalModel animalModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) =>
                AnimalDetailsPage(animalModel: animalModel), // pass by
          ),
        );
      },
      child: Container(
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),

        child: Column(
          spacing: 10,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.topRight,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(animalModel.image),
                  ),
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: Container(
                    margin: const EdgeInsets.all(10),
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.white.withAlpha(200),
                      shape: BoxShape.circle,
                    ),

                    child: const Icon(Icons.favorite_border, size: 30),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        animalModel.animalName,
                        style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      if (animalModel.isMale == true)
                        const Icon(Icons.male, size: 35)
                      else
                        const Icon(Icons.female, size: 35),
                    ],
                  ),
                  Text(animalModel.kind, style: const TextStyle(fontSize: 20)),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 4,
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xFFFFDBC9),

                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      "${animalModel.price} EGP",
                      style: const TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
