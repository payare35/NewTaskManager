import 'package:flutter/material.dart';
import 'package:new_task_manager/screens/auth_screens/login_screen/login_screen.dart';
import 'package:new_task_manager/screens/home_screen/root_home_screen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool _hidePassword = true;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(backgroundColor: Colors.white, elevation: 0.0),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/gifs/auth_gif.gif")),
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(0, 4),
                            blurRadius: 4,
                            color: Colors.black.withOpacity(0.25))
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(screenWidth / 3.312)),
                  width: screenWidth / 3.312,
                  height: screenWidth / 3.312,
                ),
                SizedBox(
                  height: screenWidth / 20.7,
                ),
                Text(
                  "Register Here",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: screenWidth / 20.7,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: screenWidth / 5.6,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: screenWidth / 12.54),
                  child: TextField(
                    decoration: InputDecoration(
                        labelText: "Enter Name",
                        prefixIcon: Icon(Icons.person)),
                  ),
                ),
                SizedBox(height: screenWidth / 18),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: screenWidth / 12.54),
                  child: TextField(
                    decoration: InputDecoration(
                        labelText: "Enter Email", prefixIcon: Icon(Icons.mail)),
                  ),
                ),
                SizedBox(height: screenWidth / 18),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: screenWidth / 12.54),
                  child: TextField(
                    obscureText: _hidePassword,
                    decoration: InputDecoration(
                        labelText: "Enter Password",
                        suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                _hidePassword = !_hidePassword;
                              });
                            },
                            icon: _hidePassword
                                ? Icon(Icons.visibility)
                                : Icon(Icons.visibility_off)),
                        prefixIcon: Icon(Icons.lock)),
                  ),
                ),
                SizedBox(height: screenWidth / 9.63),
                Container(
                  child: ElevatedButton(
                      style: ButtonStyle(
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      screenWidth / 10.35)))),
                      onPressed: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (context) => RootHomeScreen()));
                      },
                      child: Text(
                        "Register",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: screenWidth / 20.7),
                      )),
                  width: screenWidth / 2.36,
                  height: screenWidth / 8.28,
                ),
                SizedBox(
                  height: screenWidth / 20.7,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => LoginScreen()));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already have account? ",
                        style: TextStyle(fontSize: screenWidth / 31.84),
                      ),
                      Text(
                        " Login",
                        style: TextStyle(
                            fontSize: screenWidth / 31.84,
                            decoration: TextDecoration.underline),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
