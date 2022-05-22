class User {
  final String imagePath;
  final String name;
  final String email;
  final String about;
  final bool isDarkMode;
  final String age;
  final String phoneNumber;

  User({
    required this.imagePath,
    required this.name,
    required this.email,
    required this.about,
    required this.isDarkMode,
    required this.age,
    required this.phoneNumber,
  });

  User copy({
    String? imagePath,
    String? name,
    String? email,
    String? about,
    bool? isDarkMode,
    String? age,
    String? phoneNumber,
  }) =>
      User(
        imagePath: imagePath ?? this.imagePath,
        name: name ?? this.name,
        email: email ?? this.email,
        about: about ?? this.about,
        isDarkMode: isDarkMode ?? this.isDarkMode,
        age: age ?? this.age,
        phoneNumber: phoneNumber ?? this.phoneNumber,
      );

  static User fromJson(Map<String, dynamic> json) => User(
        imagePath: json['imagePath'],
        name: json['name'],
        email: json['email'],
        about: json['about'],
        isDarkMode: json['isDarkMode'],
        age: json['age'],
    phoneNumber: json['phoneNumber'],
      );

  Map<String, dynamic> toJson() => {
        'imagePath': imagePath,
        'name': name,
        'email': email,
        'about': about,
        'isDarkMode': isDarkMode,
        'age': age,
        'phoneNumber': phoneNumber,
      };
}
