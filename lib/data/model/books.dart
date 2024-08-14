import 'docs_model.dart';

class Books {
  int? numFound;
  List<Docs>? docs;

  Books({
    this.numFound,
    this.docs,
  });

  Books.fromJson(Map<String, dynamic> json) {
    numFound = json['numFound'];
    if (json['docs'] != null) {
      docs = <Docs>[];
      (json['docs'] as List).forEach((e) {
        docs!.add(Docs.fromJson(e));
      });
    } else {
      print('EMPTY');
    }
  }
}
