class User {
  String firstName = '';
  String lastName = '';

  static const String PassionCooking = 'Cooking';
  static const String PassionHiking = 'Hiking';
  static const String PassionTraveling = 'Traveling';
  static const String NewsLetter = 'NewsLetter';

  Map<String, bool> passions = {
    PassionCooking: false,
    PassionHiking: false,
    PassionTraveling: false,
    NewsLetter: false,
  };
  bool newsletter = false;

  save() {
    print('saving user input');
  }
}
