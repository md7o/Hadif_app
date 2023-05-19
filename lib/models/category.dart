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
