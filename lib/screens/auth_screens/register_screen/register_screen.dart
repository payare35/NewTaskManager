import 'package:flutter/material.dart';
import 'package:new_task_manager/screens/auth_screens/login_screen/login_screen.dart';
import 'package:new_task_manager/screens/home_screen/root_home_screen.dart';
import 'package:new_task_manager/services/auth_services/auth_services.dart';
import 'package:new_task_manager/services/database_services/user_services.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool _hidePassword = true;

  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  AuthServices _authServices = AuthServices();
  UserServices _userServices = UserServices();

  FocusNode _emailFocusNode = FocusNode();
  FocusNode _passwordFocusNode = FocusNode();
  FocusNode _submitFocusNode = FocusNode();
  final _formKey = GlobalKey<FormState>();
  final _nameKey = GlobalKey<FormFieldState>();
  final _emailKey = GlobalKey<FormFieldState>();
  final _passwordKey = GlobalKey<FormFieldState>();

  Future _register() async {}

  @override
  void dispose() {
    _emailFocusNode.dispose();
    _passwordFocusNode.dispose();
    _submitFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(backgroundColor: Colors.white, elevation: 0.0),
        body: SingleChildScrollView(
          child: Center(
            child: Form(
              key: _formKey,
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
                        borderRadius:
                            BorderRadius.circular(screenWidth / 3.312)),
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
                    margin:
                        EdgeInsets.symmetric(horizontal: screenWidth / 12.54),
                    child: TextFormField(
                      key: _nameKey,
                      controller: _nameController,
                      validator: (value) {
                        if (value.toString().trim().length == 0) {
                          return "Name is required";
                        } else {
                          return null;
                        }
                      },
                      onFieldSubmitted: (_) {
                        if (_nameKey.currentState?.validate() == true) {
                          FocusScope.of(context).requestFocus(_emailFocusNode);
                        }
                      },
                      decoration: InputDecoration(
                          labelText: "Enter Name*",
                          prefixIcon: Icon(Icons.person)),
                    ),
                  ),
                  SizedBox(height: screenWidth / 18),
                  Container(
                    margin:
                        EdgeInsets.symmetric(horizontal: screenWidth / 12.54),
                    child: TextFormField(
                      focusNode: _emailFocusNode,
                      key: _emailKey,
                      controller: _emailController,
                      onFieldSubmitted: (_) {
                        if (_emailKey.currentState?.validate() == true) {
                          FocusScope.of(context)
                              .requestFocus(_passwordFocusNode);
                        }
                      },
                      validator: (value) {
                        if (value.toString().trim().length > 0) {
                          if (!RegExp(
                                  r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
                              .hasMatch(value.toString().trim())) {
                            return "Enter Valid Email";
                          } else {
                            return null;
                          }
                        } else {
                          return "Email is required";
                        }
                      },
                      decoration: InputDecoration(
                          labelText: "Enter Email",
                          prefixIcon: Icon(Icons.mail)),
                    ),
                  ),
                  SizedBox(height: screenWidth / 18),
                  Container(
                    margin:
                        EdgeInsets.symmetric(horizontal: screenWidth / 12.54),
                    child: TextFormField(
                      obscureText: _hidePassword,
                      focusNode: _passwordFocusNode,
                      controller: _passwordController,
                      key: _passwordKey,
                      onFieldSubmitted: (_) {
                        if (_passwordKey.currentState?.validate() == true) {
                          FocusScope.of(context).requestFocus(_submitFocusNode);
                        }
                      },
                      validator: (value) {
                        if (value.toString().trim().length > 0) {
                          if (value.toString().trim().length >= 6) {
                            return null;
                          } else {
                            return "Password length must be atleast 6";
                          }
                        } else {
                          return "Password is required";
                        }
                      },
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
                        focusNode: _submitFocusNode,
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                        screenWidth / 10.35)))),
                        onPressed: () {
                          if (_formKey.currentState?.validate() == true) {
                            print("Registered successfully");
                          } else {
                            print("Enter valid form data");
                          }
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
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => LoginScreen()));
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
          ),
        ));
  }
}
