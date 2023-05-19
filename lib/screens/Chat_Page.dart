import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../models/category.dart';

class chatPage extends StatefulWidget {
  const chatPage({super.key});

  @override
  State<chatPage> createState() => _chatPageState();
}

class _chatPageState extends State<chatPage> {
  final List<NickName> NickNames = [];

  final userController = TextEditingController();

  void submitData() {
    final entredUsername = userController.text;

    userController.clear();

    if (entredUsername.isEmpty) {
      return;
    }

    _addNewNickName(entredUsername);
  }

  void _addNewNickName(String txUser) {
    final AddTx = NickName(
        name: txUser, id: DateTime.now().toString(), date: DateTime.now());
    setState(() {
      NickNames.add(AddTx);
    });
  }

  // void _delete(String id) {
  //   setState(() {
  //     NickNames.removeWhere((e) {
  //       return e.id == id;
  //     });
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('imam university'),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          //  ===================================================================
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: NickNames.length,
              itemBuilder: (context, index) {
                return Row(
                  children: [
                    Flexible(
                      fit: FlexFit.loose,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 4),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.teal),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  NickNames[index].name,
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                  ),
                                  overflow: TextOverflow.clip,
                                ),
                                const SizedBox(
                                  height: 3,
                                ),
                                Text(
                                  DateFormat('hh:mm a')
                                      .format(NickNames[index].date),
                                  style: const TextStyle(
                                      color: Color.fromARGB(255, 215, 215, 215),
                                      fontSize: 10),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: TextField(
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onPressed: submitData,
                  icon: const Icon(
                    Icons.send,
                    color: Colors.white,
                    size: 15,
                  ),
                ),
                filled: true,
                fillColor: const Color(0xFF25253A),
                border: InputBorder.none,
                focusColor: Colors.amber,
              ),
              controller: userController,
            ),
          ),
        ],
      ),
    );
  }
}
