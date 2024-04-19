class UserModel {
  String? id;
  String? email;
  String? name;
  String? photo;
  String? password;

  UserModel({
    this.id,
    this.name,
    this.email,
    this.photo,
    this.password,
  });

  /// Empty user which represents an unauthenticated user.
  static final empty = UserModel(id: '');
}
