class AuthorName {
  List<String>? name;

  AuthorName({
    this.name,
  });

  AuthorName.fromJson(Map<String, dynamic> json) {
    name = json['author_name'];
  }
}
