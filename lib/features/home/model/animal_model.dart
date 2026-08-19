class AnimalModel {
  final String image;
  final String animalName;
  final String kind;

  final String details;
  final bool isMale;

  final double price;

  AnimalModel({
    required this.image,
    required this.animalName,
    required this.kind,
    required this.details,
    required this.isMale,
    required this.price,
  });
}

final List<AnimalModel> animals = [
  AnimalModel(
    image: 'https://placeholdr.dev/600x600/cute%20golden%20retriever%20dog',
    animalName: 'Max',
    kind: 'Dog',
    details: 'Friendly and energetic Golden Retriever who loves playing.',
    isMale: true,
    price: 3500,
  ),
  AnimalModel(
    image: 'https://placeholdr.dev/600x600/white%20persian%20cat',
    animalName: 'Luna',
    kind: 'Cat',
    details: 'Calm and affectionate Persian cat who loves attention.',
    isMale: false,
    price: 2800,
  ),
  AnimalModel(
    image: 'https://placeholdr.dev/600x600/brown%20rabbit%20in%20garden',
    animalName: 'Coco',
    kind: 'Rabbit',
    details: 'Gentle rabbit that enjoys quiet places and fresh vegetables.',
    isMale: false,
    price: 1200,
  ),
  AnimalModel(
    image: 'https://placeholdr.dev/600x600/colorful%20parrot',
    animalName: 'Rio',
    kind: 'Parrot',
    details: 'Social and colorful parrot with a cheerful personality.',
    isMale: true,
    price: 1800,
  ),
  AnimalModel(
    image: 'https://placeholdr.dev/600x600/orange%20tabby%20cat',
    animalName: 'Oliver',
    kind: 'Cat',
    details: 'Playful orange cat who enjoys toys and sleeping.',
    isMale: true,
    price: 2500,
  ),
  AnimalModel(
    image: 'https://placeholdr.dev/600x600/golden%20retriever%20puppy',
    animalName: 'Bella',
    kind: 'Dog',
    details: 'Sweet and playful puppy that loves being around people.',
    isMale: false,
    price: 4000,
  ),
  AnimalModel(
    image:
        'https://placeholdr.dev/600x600/black%20and%20white%20border%20collie',
    animalName: 'Charlie',
    kind: 'Dog',
    details: 'Smart and active Border Collie with lots of energy.',
    isMale: true,
    price: 4500,
  ),
  AnimalModel(
    image: 'https://placeholdr.dev/600x600/gray%20british%20shorthair%20cat',
    animalName: 'Milo',
    kind: 'Cat',
    details: 'Quiet British Shorthair with a relaxed personality.',
    isMale: true,
    price: 3200,
  ),
  AnimalModel(
    image: 'https://placeholdr.dev/600x600/white%20fluffy%20rabbit',
    animalName: 'Daisy',
    kind: 'Rabbit',
    details: 'Soft and friendly rabbit that enjoys being around people.',
    isMale: false,
    price: 1400,
  ),
  AnimalModel(
    image: 'https://placeholdr.dev/600x600/blue%20budgie%20bird',
    animalName: 'Sky',
    kind: 'Bird',
    details: 'Small and active bird with beautiful blue feathers.',
    isMale: true,
    price: 900,
  ),
  AnimalModel(
    image: 'https://placeholdr.dev/600x600/black%20labrador%20dog',
    animalName: 'Rocky',
    kind: 'Dog',
    details: 'Loyal Labrador who enjoys outdoor activities.',
    isMale: true,
    price: 3800,
  ),
  AnimalModel(
    image: 'https://placeholdr.dev/600x600/gray%20scottish%20fold%20cat',
    animalName: 'Nala',
    kind: 'Cat',
    details: 'Sweet Scottish Fold with a calm and loving personality.',
    isMale: false,
    price: 3600,
  ),
  AnimalModel(
    image: 'https://placeholdr.dev/600x600/brown%20hamster',
    animalName: 'Peanut',
    kind: 'Hamster',
    details: 'Tiny and active hamster that loves exploring.',
    isMale: true,
    price: 700,
  ),
  AnimalModel(
    image: 'https://placeholdr.dev/600x600/white%20fluffy%20small%20dog',
    animalName: 'Snowy',
    kind: 'Dog',
    details: 'Small fluffy dog with a friendly and gentle nature.',
    isMale: false,
    price: 3000,
  ),
  AnimalModel(
    image: 'https://placeholdr.dev/600x600/yellow%20canary%20bird',
    animalName: 'Sunny',
    kind: 'Bird',
    details: 'Beautiful yellow canary with a lovely singing voice.',
    isMale: true,
    price: 1100,
  ),
  AnimalModel(
    image: 'https://placeholdr.dev/600x600/black%20rabbit',
    animalName: 'Shadow',
    kind: 'Rabbit',
    details: 'Quiet black rabbit with a gentle and curious personality.',
    isMale: true,
    price: 1300,
  ),
  AnimalModel(
    image: 'https://placeholdr.dev/600x600/siamese%20cat',
    animalName: 'Mia',
    kind: 'Cat',
    details: 'Elegant Siamese cat that enjoys playing and cuddling.',
    isMale: false,
    price: 2900,
  ),
  AnimalModel(
    image: 'https://placeholdr.dev/600x600/german%20shepherd%20dog',
    animalName: 'Bruno',
    kind: 'Dog',
    details: 'Strong and intelligent German Shepherd with a loyal nature.',
    isMale: true,
    price: 5000,
  ),
  AnimalModel(
    image: 'https://placeholdr.dev/600x600/green%20parrot',
    animalName: 'Kiwi',
    kind: 'Parrot',
    details: 'Colorful and playful parrot that enjoys interacting with people.',
    isMale: false,
    price: 2200,
  ),
  AnimalModel(
    image: 'https://placeholdr.dev/600x600/cute%20white%20guinea%20pig',
    animalName: 'Mochi',
    kind: 'Guinea Pig',
    details: 'Cute and friendly guinea pig that is easy to care for.',
    isMale: false,
    price: 1000,
  ),
];
