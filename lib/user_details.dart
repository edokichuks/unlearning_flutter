class UserDetails {
  final String firstName;
  final String lastName;
  final String age;

  UserDetails({
    required this.firstName,
    required this.lastName,
    required this.age,
  });

  static List<UserDetails> usersDetails = [
    UserDetails(firstName: 'Edoki', lastName: 'Chuks', age: '30',),
    UserDetails(firstName: 'Marlivin', lastName: 'Joseph', age: '30',),
    UserDetails(firstName: 'Grace', lastName: 'Mick', age: '30',),
    UserDetails(firstName: 'Gift', lastName: 'Chuks', age: '30',),
    UserDetails(firstName: 'Excel', lastName: 'Tope', age: '30',),
    UserDetails(firstName: 'Loveth', lastName: 'Yosh', age: '30',),
  ];
}
