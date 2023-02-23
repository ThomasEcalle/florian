class WebServiceUser {
  final String name;
  final String email;

  WebServiceUser({
    required this.name,
    required this.email,
  });

  factory WebServiceUser.fromJson(Map<String, dynamic> json) {
    return WebServiceUser(
      name: json['name'],
      email: json['email'],
    );
  }

  @override
  String toString() {
    return 'WebServiceUser{name: $name, email: $email}';
  }
}
