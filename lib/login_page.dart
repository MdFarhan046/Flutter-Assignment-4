import 'package:flutter/material.dart';
import 'package:md_farhan_ahmed_046_63b/register_page.dart';
import 'package:md_farhan_ahmed_046_63b/widget/input_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Center(child: Text("LoginPage")),
      ),
      body: Center(
        child: SizedBox(
          height: 400,
          width: 300,
          child: Card(
            color: Colors.blueGrey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Form(
                    child: InputField(
                      controller: emailcontroller,
                      keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        if (emailcontroller.text.isEmpty) {
                          return "Field cannot be empty";
                        }
                        return null;
                      },

                      prefixIcon: Icon(Icons.email),
                      hintText: "Enter Email",
                      labelText: "Email",
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Form(
                    child: InputField(
                      controller: passcontroller,
                      keyboardType: TextInputType.visiblePassword,
                      validator: (value) {
                        if (passcontroller.text.isEmpty) {
                          return "Field cannot be empty";
                        }
                        return null;
                      },
                      prefixIcon: Icon(Icons.key),
                      hintText: "Enter Password",
                      labelText: "Password",
                    ),
                  ),
                ),
                ElevatedButton(onPressed: () {}, child: Text("Login")),
                SizedBox(height: 20),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return RegisterPage();
                        },
                      ),
                    );
                  },
                  child: Text("Don't have an account?Register"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
