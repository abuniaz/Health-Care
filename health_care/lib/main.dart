import 'package:flutter/material.dart';
import 'package:health_care/forum/sign_up.dart';
import 'package:health_care/mainPage/start_page.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Homepage(),
  ));
}

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Welcome"),
          centerTitle: true,
        ),
        body: Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      "images/H1.jpg",
                    ),
                    fit: BoxFit.cover)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                buildInputFile(lable: "Phone Number"),
                buildInputFile(lable: "Password", obscureText: true),
                MaterialButton(
                  height: 35,
                  minWidth: 80,
                  color: Colors.red,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const StartPage()));
                  },
                  child: const Text("Login"),
                  shape: const StadiumBorder(side: BorderSide.none),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 50),
                  child: Row(
                    children: [
                      const Text("Don't have any account?"),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const SignUp()));
                          },
                          child: const Text("Sign Up"))
                    ],
                  ),
                ),
              ],
            )));
  }
}

Widget buildInputFile({lable, obscureText = false}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Padding(
        padding: const EdgeInsets.only(left: 15),
        child: Text(
          lable,
          style: const TextStyle(
              fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black38),
        ),
      ),
      const SizedBox(
        height: 5,
      ),
      Padding(
        padding: const EdgeInsets.only(left: 15, right: 50),
        child: TextField(
          keyboardType: TextInputType.phone,
          obscureText: obscureText,
          decoration: InputDecoration(
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 0, horizontal: 15),
              border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade400))),
        ),
      ),
      const SizedBox(
        height: 10,
      )
    ],
  );
}
