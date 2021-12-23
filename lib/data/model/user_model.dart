class UserList {
  UserList({
    required this.data,
    required this.total,
    required this.page,
    required this.limit,
  });

  List<User> data;
  int total;
  int page;
  int limit;

  factory UserList.fromJson(Map<String, dynamic> json) => UserList(
    data: List<User>.from(json["data"].map((x) => User.fromJson(x))),
    total: json["total"],
    page: json["page"],
    limit: json["limit"],
  );
}

class User {
  User({
    required this.id,
    required this.title,
    required this.firstName,
    required this.lastName,
    required this.picture,
  });

  String id;
  String title;
  String firstName;
  String lastName;
  String picture;

  factory User.fromJson(Map<String, dynamic> json) => User(
    id: json["id"],
    title: json["title"],
    firstName: json["firstName"],
    lastName: json["lastName"],
    picture: json["picture"],
  );

}

