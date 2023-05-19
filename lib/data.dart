import 'package:flutter/material.dart';

import 'models/Gover.dart';
import 'models/category.dart';

final data = {
  Category(
    id: '1',
    items: const [
      Roller(
        name: 'جامعات',
        imageUrl: "images/S.png",
        spinName: 'SpinWheel',
      ),
    ],
  ),
  Category(
    id: '2',
    items: const [
      Roller(
        name: 'مستشفيات',
        imageUrl: "images/JapanC.png",
        spinName: 'c--',
      ),
    ],
  ),
  Category(
    id: '3',
    items: const [
      Roller(
        name: 'مؤسسات',
        imageUrl: "images/S.png",
        spinName: 'c++',
      ),
    ],
  ),
  Category(
    id: '4',
    items: const [
      Roller(
        name: 'هيئات',
        imageUrl: "images/S.png",
        spinName: 'c++',
      ),
    ],
  ),
  Category(
    id: '4',
    items: const [
      Roller(
        name: 'وزارات',
        imageUrl: "images/S.png",
        spinName: 'c++',
      ),
    ],
  ),
};
