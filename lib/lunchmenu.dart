class LunchMenu {
  String lunchDay;
  String lunchPic;
  List<String> lunch;
  LunchMenu(
    this.lunchDay,
    this.lunchPic,
    this.lunch,
  );
  static List<LunchMenu> weeklyLunch = [
    LunchMenu('Monday', 'zucchiniCarrotBread.jpg', [
      'Zucchini Carrot Breakfast Bread',
      'New York Yogurt Choice',
      'Hot Oatmeal',
      'Seasonal Fresh Fruit'
    ]),
    LunchMenu('Tuesday', 'blueberryWaffles.jpg',
        ['Mini Blueberry Waffles', 'Fresh Plums']),
    LunchMenu('Wednesday', 'bananaMuffins.jpg',
        ['Banana Muffin', 'Mozzarella Cheese Stick', 'Fresh Oranges']),
    LunchMenu('Thursday', 'buttermilkPancakes.jpg',
        ['Buttermilk Pancakes', 'Turkey Sausage', 'Fresh Apples']),
    LunchMenu('Friday', 'bagelCreamCheese.jpg',
        ['Assorted Fresh Bagels', 'Cream Cheese & Jelly', 'Fresh Pears'])
  ];
} // end of class
