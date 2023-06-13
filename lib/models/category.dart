import 'package:flutter/widgets.dart';

import 'Gover.dart';

class Category {
  final String id;
  final List<Roller> items;

  Category({
    required this.id,
    required this.items,
  });
}

class Category2 {
  final String id;
  final List<University> saud;

  Category2({
    required this.id,
    required this.saud,
  });
}

class NickName {
  final String id;
  final String name;
  final DateTime date;

  NickName({
    required this.name,
    required this.id,
    required this.date,
  });
}
