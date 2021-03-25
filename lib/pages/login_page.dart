import 'package:flutter/material.dart';
import 'package:flutter_catalog/utils/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;
  final _formkey = GlobalKey<FormState>();
  moveToHome(BuildContext context) async {
    if (_formkey.currentState.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changeButton = false;
      });
      //used to convert a container to work like a button
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Form(
            key: _formkey,
            child: Column(
              children: [
                Image.asset(
                  "assets/images/login_image.png",
                  fit: BoxFit.fitWidth,
                ),
                SizedBox(
                  height: 40,
                  width: 10,
                ),
                Text(
                  "Welcome $name",
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 16.0, horizontal: 32.0),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: "Enter UserName",
                          labelText: "UserName",
                        ),
                        validator: (value) {
                          if (value.isEmpty) return "User name can't be empty";
                          return null;
                        },
                        onChanged: (value) {
                          name = value;
                          setState(() {});
                        },
                      ),
                      SizedBox(
                        height: 30,
                        width: 20,
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: "Enter Password",
                          labelText: "Password",
                        ),
                        validator: (value) {
                          if (value.isEmpty)
                            return "Password can't be empty";
                          else if (value.length < 6)
                            return "password should be atleast of length 6";
                          return null;
                        },
                      ),
                      SizedBox(
                        height: 40,
                        width: 20,
                      ),
                      Material(
                        color: Colors.deepPurple,
                        borderRadius:
                            BorderRadius.circular(changeButton ? 50 : 8),
                        child: InkWell(
                          //splashColor: Colors.red,
                          onTap: () => moveToHome(context),
                          child: AnimatedContainer(
                            duration: Duration(seconds: 1),
                            // decoration: BoxDecoration(
                            //     color: Colors.purple,
                            // shape: changeButton
                            //     ? BoxShape.circle,
                            //     : BoxShape.rectangle,
                            //     ),
                            height: 50,
                            width: changeButton ? 50 : 200,
                            alignment: Alignment.center,
                            child: changeButton
                                ? Icon(Icons.done)
                                : Text(
                                    "LOGIN",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: 22,
                                    ),
                                  ),
                          ),
                        ),
                      ),
                      // ElevatedButton(
                      //   child: Text("Login"),
                      //   style: TextButton.styleFrom(
                      //     minimumSize: Size(150, 50),
                      //   ),
                      //   onPressed: () {
                      //     print("Hi button is pressed");
                      //     Navigator.pushNamed(context, MyRoutes.homeRoute);
                      //   },
                      // ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
