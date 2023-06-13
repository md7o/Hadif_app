import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  List<String> searchResults = [];
  TextEditingController searchController = TextEditingController();

  List<String> allData = [
    'الأخبار الوطنية',
    'الدورات التدريبية',
    'الوظائف الشاغرة',
    'المركز الإعلامي',
    'الأخبار الوطنية',
    'الدورات التدريبية',
    'الوظائف الشاغرة',
    'المركز الإعلامي',
    'الأخبار الوطنية',
    'الدورات التدريبية',
    'الوظائف الشاغرة',
    'المركز الإعلامي',
  ];

  List<String> filteredList = [];

  String searchText = '';

  @override
  void initState() {
    super.initState();
    filteredList = allData;
  }

  void filterList(String query) {
    setState(() {
      if (query.isNotEmpty) {
        filteredList = allData
            .where((item) => item.toLowerCase().contains(query.toLowerCase()))
            .toList();
      } else {
        filteredList = allData;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 40),
        child: Column(
          children: [
            SizedBox(
              height: 80,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Hero(
                  tag: 'hlao',
                  child: Material(
                    color: Colors.transparent,
                    child: TextField(
                      cursorColor: Colors.white,
                      controller: searchController,
                      autofocus: true,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                      decoration: InputDecoration(
                        label: const Text(
                          'البحث',
                          style: TextStyle(
                            color: Color(0xFF595E7C),
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        filled: true,
                        fillColor: const Color(0xFF25253A),
                      ),
                      onChanged: (value) {
                        setState(
                          () {
                            searchText = value;
                            filterList(searchText);
                          },
                        );
                      },
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                physics: BouncingScrollPhysics(),
                itemCount: filteredList.length,
                itemBuilder: (context, index) {
                  final item = filteredList[index];
                  return ListTile(
                    title: Text(
                      item,
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }
}


// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:google_fonts/google_fonts.dart';
// import '../data.dart';
// import '../models/category.dart';
// import '../models/world_car.dart';

// class SearchPage extends StatefulWidget {
//   const SearchPage({
//     super.key,
//   });

//   @override
//   State<SearchPage> createState() => _SearchPageState();
// }

// class _SearchPageState extends State<SearchPage> {
//   List<String> originalList = [
//     'Item 1',
//     'Item 2',
//     'Item 3',
//     'Another Item',
//     'Something'
//   ];
//   List<String> filteredList = [];

//   String searchText = '';

//   @override
//   void initState() {
//     super.initState();
//     filteredList = originalList;
//   }

//   void filterList(String query) {
//     setState(() {
//       if (query.isNotEmpty) {
//         filteredList = originalList
//             .where((item) => item.toLowerCase().contains(query.toLowerCase()))
//             .toList();
//       } else {
//         filteredList = originalList;
//       }
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Padding(
//       padding: const EdgeInsets.symmetric(vertical: 50),
//       child: Column(
//         children: [
//           SizedBox(
//             height: 50,
//             child: Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 10),
//               child: Hero(
//                 tag: 'hlao',
                // child: Material(
                //   color: Colors.transparent,
                //   elevation: 0,
                //   child: TextField(
                //     onChanged: (value) {
                //       setState(() {
                //         searchText = value;
                //         filterList(searchText);
                //       });
                //     },
                //     autofocus: true,
                //     decoration: InputDecoration(
                //       label: Text('Search'),
                //       border: OutlineInputBorder(
                //         borderRadius: BorderRadius.circular(20),
                //       ),
                //     ),
                //   ),
                // ),
            //   ),
            // ),
//           ),
//           for (final category in data)
//             //         // for (WorldCar item in (category.items))
//             for (final world_car in category.items)
//               for (Cars soo in (world_car.carItems))
//                 Expanded(
//                   child: ListView.builder(
//                     itemCount: filteredList.length,
//                     itemBuilder: (context, index) {
//                       final item = filteredList[index];
//                       return ListTile(
//                         title: Text(item),
//                       );
//                     },
//                   ),
//                 ),
//         ],
//       ),
//     )

//         );
//   }
// }
