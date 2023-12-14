class SingInStae {
  final String email;
  final String password;

  SingInStae({
    this.email = "",
    this.password = "",
  });

  SingInStae copyWith({
    String? email,
    String? password,
  }) {
    return SingInStae(
      email: email ?? this.email,
      password: password ?? this.password,
    );
  }
}
