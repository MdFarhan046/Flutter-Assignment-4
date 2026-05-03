import 'package:flutter/material.dart';
import 'package:md_farhan_ahmed_046_63b/login_page.dart';
import 'package:md_farhan_ahmed_046_63b/widget/input_field.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController namecontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passcontroller = TextEditingController();
  TextEditingController cpasscontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 0, 99, 90),
        title: Center(child: Text("RegisterPage")),
      ),
      body: Center(
        child: SizedBox(
          height: 500,
          width: 300,
          child: Card(
            color: const Color.fromARGB(255, 0, 99, 90),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Form(
                    child: InputField(
                      controller: namecontroller,
                      keyboardType: TextInputType.name,
                      validator: (value) {
                        if (namecontroller.text.isEmpty) {
                          return "Field cannot be empty";
                        }
                        return null;
                      },

                      prefixIcon: Icon(Icons.person),
                      hintText: "Enter Name",
                      labelText: "Name",
                    ),
                  ),
                ),
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

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Form(
                    child: InputField(
                      controller: cpasscontroller,
                      keyboardType: TextInputType.visiblePassword,
                      validator: (value) {
                        if (cpasscontroller.text.isEmpty) {
                          return "Field cannot be empty";
                        }
                        return null;
                      },

                      prefixIcon: Icon(Icons.key),
                      hintText: "Enter Password",
                      labelText: "Confirm Password",
                    ),
                  ),
                ),
                ElevatedButton(onPressed: () {}, child: Text("Register")),
                SizedBox(height: 20),

                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return LoginPage();
                        },
                      ),
                    );
                  },
                  child: Text("Already have an account?Login"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
