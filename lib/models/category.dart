import 'Gover.dart';

class Category {
  final String id;
  final List<Gov> items;

  Category({
    required this.id,
    required this.items,
  });
}

class Category2 {
  final String id;
  final List<University> saudi_U;

  Category2({
    required this.id,
    required this.saudi_U,
  });
}

class ChatText {
  final String id;
  final String name;
  final DateTime date;

  ChatText({
    required this.name,
    required this.id,
    required this.date,
  });
}
