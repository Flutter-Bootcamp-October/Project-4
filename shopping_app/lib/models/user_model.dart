class User {
  String fullName;
  String email;
  String password;
  String imagePath;
  String mobileNumber;

  User(
      {required this.email,
      required this.fullName,
      required this.imagePath,
      required this.mobileNumber,
      required this.password});
}
