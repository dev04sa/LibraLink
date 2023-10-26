import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final nameController = TextEditingController();
  final cpasswordController = TextEditingController();
  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
    nameController.dispose();
    cpasswordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
        child: Stack(
          fit: StackFit.passthrough,
          children: [
            Container(
              width: 510,
              height: 790,
              color: Colors.white,
            ),
            Container(
                height: 320,
                width: 410,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/bg.png'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.only(right: 300, bottom: 220),
                  child: Image(image: AssetImage('assets/images/logo.png')),
                )),
            Positioned(
              bottom: 0,
              left: 0,
              child: SizedBox(
                height: 570,
                width: 410,
                child: Card(
                    surfaceTintColor: Colors.white,
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(45),
                            topRight: Radius.circular(45))),
                    child: SizedBox(
                      width: double.infinity,
                      height: 500,
                      child: Column(
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(top: 40),
                            child: Text(
                              'CREATE ACCOUNT',
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Column(children: [
                            SizedBox(
                              width: 320,
                              height: 52,
                              child: TextField(
                                controller: nameController,
                                decoration: InputDecoration(
                                  labelText: ' Username ',
                                  hintStyle:
                                      const TextStyle(color: Colors.white),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30)),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 25,
                            ),
                            SizedBox(
                              width: 320,
                              height: 52,
                              child: TextField(
                                controller: emailController,
                                decoration: InputDecoration(
                                  labelText: 'Nitp Official email ',
                                  hintStyle:
                                      const TextStyle(color: Colors.white),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30)),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 25,
                            ),
                            SizedBox(
                              width: 320,
                              height: 52,
                              child: TextField(
                                controller: passwordController,
                                decoration: InputDecoration(
                                  labelText: 'Password',
                                  hintStyle:
                                      const TextStyle(color: Colors.white),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30)),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 25,
                            ),
                            SizedBox(
                              width: 320,
                              height: 52,
                              child: TextField(
                                controller: cpasswordController,
                                obscureText: true,
                                decoration: InputDecoration(
                                  labelText: ' Confirm Password ',
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30)),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                          ]),
                          SizedBox(
                            width: 320,
                            height: 52,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFF1E293B),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30)),
                              ),
                              child: const Text(
                                'Sign up',
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                              onPressed: () {},
                            ),
                          ),
                          const SizedBox(
                            height: 60,
                          ),
                          Container(
                            padding: const EdgeInsets.only(left: 10, right: 40),
                            child: Row(
                              children: <Widget>[
                                Expanded(
                                  child: Container(
                                    margin: const EdgeInsets.only(right: 10.0),
                                    color: Colors.black,
                                    height: 1.0,
                                  ),
                                ),
                                const Text(
                                  'Sign in',
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    margin: const EdgeInsets.only(
                                      left: 10.0,
                                    ),
                                    color: Colors.black,
                                    height: 1.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )),
              ),
            ),
          ],
        ),
      )),
    );
  }
}