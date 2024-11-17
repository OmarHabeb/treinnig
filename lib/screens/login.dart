import 'package:flutter/material.dart';
import 'package:treinnig/core/helpers/navigation_helper.dart';
import 'package:treinnig/screens/home/home_screen.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool password = false;
  bool Confirm_password = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Container(
                width: 78,
                height: 47,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/Group 91.png"))),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Sign Up",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                decoration: InputDecoration(labelText: "Email Address"),
              ),
              SizedBox(
                height: 30,
              ),
              TextField(
                obscureText: password,
                decoration: InputDecoration(
                    labelText: "Password",
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            password == false
                                ? password = true
                                : password = false;
                          });
                        },
                        icon: Icon(
                          Icons.remove_red_eye_outlined,
                          color: password == true ? Colors.blue : Colors.grey,
                        ))),
              ),
              SizedBox(
                height: 30,
              ),
              TextField(
                obscureText: Confirm_password,
                decoration: InputDecoration(
                    labelText: "Confirm Password",
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            Confirm_password == false
                                ? Confirm_password = true
                                : Confirm_password = false;
                          });
                        },
                        icon: Icon(Icons.remove_red_eye_outlined,
                            color: Confirm_password == true
                                ? Colors.blue
                                : Colors.grey))),
              ),
              SizedBox(
                height: 50,
              ),
              Center(
                child: InkWell(
                    onTap: () {},
                    child: Container(
                      width: 201,
                      height: 72,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color.fromRGBO(80, 99, 191, 1),
                      ),
                      child: Center(
                        child: Text(
                          "Sign Up",
                          style: TextStyle(color: Colors.white, fontSize: 22),
                        ),
                      ),
                    )),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 79,
                    height: 2,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text("Or"),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 79,
                    height: 2,
                    color: Colors.grey,
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(60),
                        color: Color.fromARGB(255, 255, 254, 219),
                        image: DecorationImage(
                            image: AssetImage("assets/google.png"))),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(60),
                        image: DecorationImage(
                            image: AssetImage("assets/Facebook.png"))),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an account1?"),
                  InkWell(
                    onTap: () {
                      NavigationHelper.pushScreen(context, HomeScreen());
                    },
                    child: Text(
                      "Login",
                      style: TextStyle(color: Colors.blue),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
