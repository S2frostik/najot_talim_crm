// TODO 1: Talaba klasini yaratish
class Student {
  final String id;
  final String firstName;
  final String lastName;
  final String password;
  final String? email;
  final bool isMale;
  final String course;

  const Student({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.password,
    required this.isMale,
    required this.course,
    this.email,
  });

  Student copyWith({
    String? firstName,
    String? lastName,
    String? password,
    String? email,
    String? course,
  }) {
    return Student(
      id: id,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      password: password ?? this.password,
      isMale: isMale,
      course: course ?? this.course,
      email: email ?? this.email,
    );
  }

  @override
  String toString() => '''
Id: $id
FirstName: $firstName
LastName: $lastName 
Password: $password
Email: $email
Gender: ${isMale ? "Haa erkak erkak" : "Ayol"}
Course: $course
''';
}
