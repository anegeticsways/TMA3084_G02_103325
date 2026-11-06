class MenuItem {
  const MenuItem({
    required this.name,
    required this.route,
    required this.image,
    required this.description,
  });

  final String name;
  final String route;
  final String image;
  final String description;
}

const List<MenuItem> menuItems = [
  MenuItem(
    name: 'Vegetable Pizza',
    route: '/vegetable',
    image: 'assets/images/vegetable_pizza.jpg',
    description: 'Fresh bell peppers, mushrooms, olives and onions on a crispy base.',
  ),
  MenuItem(
    name: 'Cheese Pizza',
    route: '/cheese',
    image: 'assets/images/cheese_pizza.jpg',
    description: 'Classic mozzarella and tomato sauce, baked until golden.',
  ),
  MenuItem(
    name: 'Box of Fries',
    route: '/fries',
    image: 'assets/images/fries.jpg',
    description: 'Golden, crispy fries seasoned with a pinch of salt.',
  ),
];