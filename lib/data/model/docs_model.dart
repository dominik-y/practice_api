import 'author_name_model.dart';
import 'first_sentence_model.dart';

class Docs {
  List<AuthorName>? authorName;
  List<FirstSentence>? firstSentence;
  int? firstPublishYear;
  String? coverEditionKey;

  Docs({
    this.authorName,
    this.firstSentence,
    this.firstPublishYear,
    this.coverEditionKey,
  });

  Docs.fromJson(Map<String, dynamic> json) {
    firstPublishYear = json['first_publish_year'];
    coverEditionKey = json['cover_edition_key'];

    if (json['author_name'] != null) {
      authorName = <AuthorName>[];
      (json['docs'] as List).forEach((e) {
        authorName!.add(AuthorName.fromJson(e));
      });
    } else {
      print('FAILEd');
    }

    // PUBLISH YEAR
    if (json['first_publish_year'] != null) {
      firstPublishYear = firstPublishYear;
      //print(firstPublishYear);
    }

    // EDITION KEY
    if (json['cover_edition_key'] != null) {
      coverEditionKey = coverEditionKey;
      //print(coverEditionKey);
    }
  }
}
