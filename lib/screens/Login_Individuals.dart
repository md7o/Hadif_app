import 'package:flutter/material.dart';

import '../widgets/B_N_B.dart';

class LoginIndividuals extends StatefulWidget {
  const LoginIndividuals({
    super.key,
    required this.transitionAnimation,
  });
  final Animation<double> transitionAnimation;

  @override
  State<LoginIndividuals> createState() => _LoginIndividualsState();
}

class _LoginIndividualsState extends State<LoginIndividuals> {
  bool _obscureText = true;

  TextEditingController _textEditingController = TextEditingController();
  TextEditingController _PasswordEditingController = TextEditingController();

  void PasswordButtonEye() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: AnimatedBuilder(
          animation: widget.transitionAnimation,
          builder: (context, child) {
            return SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(0, -0.3),
                end: const Offset(0, 0),
              ).animate(
                CurvedAnimation(
                  curve: const Interval(0, 1, curve: Curves.easeOutCubic),
                  parent: widget.transitionAnimation,
                ),
              ),
              child: child,
            );
          },
          child: const Center(
            child: Text(
              'تسجيل دخول (أفراد)',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedBuilder(
            animation: widget.transitionAnimation,
            builder: (context, child) {
              return SlideTransition(
                position: Tween<Offset>(
                  begin: const Offset(0, -1),
                  end: const Offset(0, 0),
                ).animate(
                  CurvedAnimation(
                    curve: const Interval(0, 1, curve: Curves.easeOutCubic),
                    parent: widget.transitionAnimation,
                  ),
                ),
                child: child,
              );
            },
            child: const Text(
              'مرحبا بك في هادف الأفراد',
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          AnimatedBuilder(
            animation: widget.transitionAnimation,
            builder: (context, child) {
              return SlideTransition(
                position: Tween<Offset>(
                  begin: const Offset(0, 0.7),
                  end: const Offset(0, 0),
                ).animate(
                  CurvedAnimation(
                    curve: const Interval(0, 1, curve: Curves.easeOutCubic),
                    parent: widget.transitionAnimation,
                  ),
                ),
                child: child,
              );
            },
            child: Column(
              children: [
                SizedBox(
                  height: 80,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    child: TextField(
                      controller: _textEditingController,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        label: const Text(
                          'رقم الهوية',
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
                        focusColor: Colors.amber,
                      ),
                      // controller: userController,
                    ),
                  ),
                ),
                SizedBox(
                  height: 80,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    child: TextField(
                      obscureText: _obscureText,
                      controller: _PasswordEditingController,
                      style: const TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        label: const Text(
                          'كلمة المرور',
                          style: TextStyle(
                            color: Color(0xFF595E7C),
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        suffixIcon: IconButton(
                          splashColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onPressed: PasswordButtonEye,
                          icon: Icon(
                            _obscureText
                                ? Icons.visibility_off
                                : Icons.visibility,
                            color: Colors.white,
                            size: 15,
                          ),
                        ),
                        filled: true,
                        fillColor: const Color(0xFF25253A),
                        focusColor: Colors.amber,
                      ),
                      // controller: userController,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'تسجيل جديد',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'نسيت كلمة المرور',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) {
                        return BNB(
                          transitionAnimation: animation,
                        );
                      },
                      transitionDuration: const Duration(milliseconds: 1300),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 100, vertical: 20),
                    child: Container(
                      child: Text(
                        'دخول',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      width: double.infinity,
                      height: 30,
                      decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
