import 'dart:async';
import 'dart:math';

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

  var receivedMessage = '';
  var automatedReply = '';
  Timer? _timer;
  bool showTimerIcon = false;

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

  void sendMessage(String message) {
    setState(() {
      receivedMessage = message;
    });
    _startTimer();
  }

  void _startTimer() {
    _cancelTimer();

    setState(() {
      showTimerIcon = true;
    });
    _timer = Timer(Duration(seconds: 2), () {
      setState(() {
        automatedReplies[replyIndex % automatedReplies.length];
        replyIndex++;
        showTimerIcon = false;
      });
    });
  }

  void _cancelTimer() {
    // Cancel the timer if it is running
    if (_timer != null && _timer!.isActive) {
      _timer!.cancel();
    }
  }

  @override
  void dispose() {
    // Cancel the timer when the screen is disposed
    _cancelTimer();
    super.dispose();
  }

  void _automatedReply() {
    setState(() {
      _startTimer();
      submitData();
    });
  }

  List<String> automatedReplies = [
    'كيف يمكنني مساعدتك',
    'يجب التسجيل من خلال موقع أبشر',
    'يوجد حظر 30 يوم ولا يمكن فعل شيئ'
  ];
  int replyIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'bot replay',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
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
                return Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
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
                                  horizontal: 10, vertical: 0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    NickNames[index].name,
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 13,
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
                                        color:
                                            Color.fromARGB(255, 215, 215, 215),
                                        fontSize: 10),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          Container(
                            width: 35,
                            height: 35,
                            child: CircleAvatar(
                              backgroundColor: Theme.of(context).primaryColor,
                              child: Image.asset(
                                'images/man.png',
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Container(
                      width: 35,
                      height: 35,
                      child: CircleAvatar(
                        backgroundColor: Theme.of(context).primaryColor,
                        child: Image.asset(
                          'images/man.png',
                        ),
                      ),
                    ),
                  ],
                ),
                Flexible(
                  fit: FlexFit.loose,
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 4),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Theme.of(context).primaryColor),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              automatedReplies[
                                  replyIndex % automatedReplies.length],
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                              ),
                              overflow: TextOverflow.clip,
                            ),
                            if (showTimerIcon)
                              const Text(
                                'Typing . . . ',
                                style: TextStyle(
                                    color: Color(0xFFD7D7D7), fontSize: 10),
                              ),
                            const SizedBox(
                              height: 3,
                            ),
                            Text(
                              DateFormat('hh:mm a').format(DateTime.now()),
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
                  onPressed: _automatedReply,
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
