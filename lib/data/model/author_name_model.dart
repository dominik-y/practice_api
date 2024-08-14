class AuthorName {
  String? authorName;

  AuthorName({
    this.authorName,
  });

  AuthorName.fromJson(Map<String, dynamic> json) {
    authorName = json['author_name'];

    // if (json['author_name'] != null) {
    //   authorName = authorName;
    // }
  }
}
