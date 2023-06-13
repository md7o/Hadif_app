class Gov {
  final String name;
  final String imageUrl;
  final String spinName;

  const Gov({
    required this.name,
    required this.imageUrl,
    required this.spinName,
  });
}

class University {
  final String name;
  final String imageUrl;
  final List<University_Categorys> UC;

  const University({
    required this.name,
    required this.imageUrl,
    required this.UC,
  });
}

class University_Categorys {
  final name;
  final String imageUrl;

  const University_Categorys({
    required this.name,
    required this.imageUrl,
  });
}
