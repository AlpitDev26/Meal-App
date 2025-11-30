import 'package:meal_recipe_app/data/category_data.dart';
import 'package:meal_recipe_app/models/meal_model.dart';

List<MealModel> meals = [
  MealModel(
    id: 'm1',
    categories: ['f1'],
    title: 'Puran Poli',
    imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/52/Puran_Poli.jpg/800px-Puran_Poli.jpg',
    ingredients: [
      '1 cup Chana Dal',
      '1 cup Jaggery',
      '1 cup Whole Wheat Flour',
      'Cardamom Powder',
      'Ghee'
    ],
    steps: [
      'Cook chana dal until soft.',
      'Mash dal and cook with jaggery until thick.',
      'Prepare dough with flour.',
      'Stuff the sweet mixture into dough balls.',
      'Roll out and roast with ghee.'
    ],
    duration: 60,
    complexity: Complexity.hard,
    affordability: Affordability.affordable,
    isGlutenFree: false,
    isLactoseFree: false,
    isVegan: false,
    isVegetarian: true,
  ),
  MealModel(
    id: 'm2',
    categories: ['f1'],
    title: 'Misal Pav',
    imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/a/a6/Misal_Pav_at_Aaswad.jpg',
    ingredients: [
      '2 cups Sprouted Moth Beans',
      '2 Onions',
      '2 Tomatoes',
      'Ginger-Garlic Paste',
      'Goda Masala',
      'Farsan',
      'Pav (Bread)'
    ],
    steps: [
      'Cook sprouted beans.',
      'Sauté onions, tomatoes, and spices.',
      'Add beans and water to make spicy curry (Kat).',
      'Serve hot topped with farsan and chopped onions.',
      'Eat with Pav.'
    ],
    duration: 45,
    complexity: Complexity.challenging,
    affordability: Affordability.pricey,
    isGlutenFree: false,
    isLactoseFree: true,
    isVegan: true,
    isVegetarian: true,
  ),
  MealModel(
    id: 'm3',
    categories: ['f1'],
    title: 'Vada Pav',
    imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/4/4e/Vada_Pav-Indian_street_food.JPG',
    ingredients: [
      '4 Potatoes (Boiled)',
      '1 cup Gram Flour (Besan)',
      'Green Chilies',
      'Garlic',
      'Mustard Seeds',
      'Pav'
    ],
    steps: [
      'Mash potatoes and mix with tempered spices.',
      'Make batter with gram flour.',
      'Form potato balls, dip in batter, and deep fry.',
      'Serve inside a Pav with chutneys.'
    ],
    duration: 30,
    complexity: Complexity.simple,
    affordability: Affordability.affordable,
    isGlutenFree: false,
    isLactoseFree: true,
    isVegan: true,
    isVegetarian: true,
  ),
  MealModel(
    id: 'm4',
    categories: ['f1'],
    title: 'Bharli Vangi (Stuffed Eggplant)',
    imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/thumb/6/6f/Bharli_Vangi.jpg/640px-Bharli_Vangi.jpg',
    ingredients: [
      '6 Small Eggplants',
      '1/2 cup Roasted Peanuts',
      '1/2 cup Coconut (Grated)',
      'God Masala',
      'Tamarind pulp'
    ],
    steps: [
      'Slit eggplants into four parts.',
      'Make stuffing with peanuts, coconut, and spices.',
      'Stuff the eggplants.',
      'Cook in a pan with oil and a little water until soft.'
    ],
    duration: 40,
    complexity: Complexity.challenging,
    affordability: Affordability.affordable,
    isGlutenFree: true,
    isLactoseFree: true,
    isVegan: true,
    isVegetarian: true,
  ),
  MealModel(
    id: 'm5',
    categories: ['f1'],
    title: 'Thalipeeth',
    imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c3/Thalipeeth.jpg/640px-Thalipeeth.jpg',
    ingredients: [
      '1 cup Mixed Flour (Bhajani)',
      '1 Onion (Chopped)',
      'Coriander leaves',
      'Sesame seeds',
      'Spices'
    ],
    steps: [
      'Mix flour, onion, spices, and water to form dough.',
      'Pat a portion of dough onto a plastic sheet or pan.',
      'Make a hole in the center.',
      'Roast on a tawa with oil until crisp.'
    ],
    duration: 20,
    complexity: Complexity.simple,
    affordability: Affordability.affordable,
    isGlutenFree: false,
    isLactoseFree: true,
    isVegan: true,
    isVegetarian: true,
  ),
  MealModel(
    id: 'm6',
    categories: ['f2'],
    title: 'Masala Dosa',
    imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/9/9f/Masala_Dosa_Food.jpg',
    ingredients: [
      '1 cup Urad Dal',
      '3 cups Rice',
      'Potatoes (for filling)',
      'Onions',
      'Mustard Seeds',
      'Turmeric'
    ],
    steps: [
      'Soak rice and dal separately, grind to a batter, and ferment overnight.',
      'Prepare potato masala by sautéing boiled potatoes with onions and spices.',
      'Spread batter on a hot griddle to make a thin crepe.',
      'Add potato filling inside and fold.',
      'Serve hot with chutney and sambar.'
    ],
    duration: 45,
    complexity: Complexity.challenging,
    affordability: Affordability.affordable,
    isGlutenFree: true,
    isLactoseFree: true,
    isVegan: true,
    isVegetarian: true,
  ),
  MealModel(
    id: 'm7',
    categories: ['f2'],
    title: 'Idli Sambar',
    imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/1/11/Idli_Sambar.JPG',
    ingredients: [
      '1 cup Urad Dal',
      '2 cups Rice Rava (Idli Rava)',
      'Toor Dal (for Sambar)',
      'Mixed Vegetables',
      'Sambar Powder',
      'Tamarind'
    ],
    steps: [
      'Grind soaked dal and mix with rava; ferment overnight.',
      'Steam batter in idli molds for 10-15 minutes.',
      'Cook toor dal and vegetables with tamarind water and spices for sambar.',
      'Serve fluffy idlis submerged in hot sambar.'
    ],
    duration: 30,
    complexity: Complexity.simple,
    affordability: Affordability.affordable,
    isGlutenFree: true,
    isLactoseFree: true,
    isVegan: true,
    isVegetarian: true,
  ),
  MealModel(
    id: 'm8',
    categories: ['f2'],
    title: 'Medu Vada',
    imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/6/65/Medu_Vada_sambar.JPG',
    ingredients: [
      '1 cup Urad Dal',
      'Green Chilies',
      'Black Peppercorns',
      'Curry Leaves',
      'Ginger',
      'Oil for frying'
    ],
    steps: [
      'Soak urad dal for 3-4 hours.',
      'Grind to a thick, fluffy batter with very little water.',
      'Mix in chopped chilies, pepper, and ginger.',
      'Shape into donuts and deep fry until golden crisp.',
      'Serve with coconut chutney.'
    ],
    duration: 40,
    complexity: Complexity.challenging,
    affordability: Affordability.affordable,
    isGlutenFree: true,
    isLactoseFree: true,
    isVegan: true,
    isVegetarian: true,
  ),
  MealModel(
    id: 'm9',
    categories: ['f2'],
    title: 'Ven Pongal',
    imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/e/e2/Ven_Pongal.jpg',
    ingredients: [
      '1 cup Raw Rice',
      '1/2 cup Moong Dal',
      'Black Pepper',
      'Cumin Seeds',
      'Ginger',
      'Ghee',
      'Cashews'
    ],
    steps: [
      'Dry roast moong dal until fragrant.',
      'Pressure cook rice and dal together until mushy.',
      'Temper pepper, cumin, ginger, and cashews in plenty of ghee.',
      'Mix tempering into the cooked rice-dal mixture.'
    ],
    duration: 25,
    complexity: Complexity.simple,
    affordability: Affordability.affordable,
    isGlutenFree: true,
    isLactoseFree: false,
    isVegan: false,
    isVegetarian: true,
  ),
  MealModel(
    id: 'm10',
    categories: ['f2'],
    title: 'Appam with Stew',
    imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/b/b6/Appam_stew.jpg',
    ingredients: [
      '2 cups Raw Rice',
      '1/2 cup Grated Coconut',
      'Yeast',
      'Coconut Milk',
      'Vegetables (Carrot, Peas, Potato)',
      'Whole Spices'
    ],
    steps: [
      'Grind soaked rice and coconut; add yeast and ferment.',
      'Make appams in a curved pan (Appachatti).',
      'Cook vegetables in thin coconut milk with spices.',
      'Finish stew by adding thick coconut milk and simmering briefly.'
    ],
    duration: 50,
    complexity: Complexity.challenging,
    affordability: Affordability.pricey,
    isGlutenFree: true,
    isLactoseFree: true,
    isVegan: true,
    isVegetarian: true,
  ),

];


