import 'package:flutter/material.dart';
import 'package:md_farhan_ahmed_046_63b/widget/input_field.dart';

class ConverterPage extends StatefulWidget {
  const ConverterPage({super.key});

  @override
  State<ConverterPage> createState() {
    return _ConverterPageState();
  }
}

class _ConverterPageState extends State<ConverterPage> {
  TextEditingController controller = TextEditingController();
  double result = 0;
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Center(child: Text("ConverterPage")),
      ),
      body: Center(
        child: SizedBox(
          height: 400,
          width: 300,
          child: Card(
            color: Colors.brown,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("USD "),
                      Icon(Icons.swap_horiz),
                      Text(" BDT"),
                    ],
                  ),
                  SizedBox(height: 20),
                  Form(
                    key: _formKey,
                    //autovalidateMode: AutovalidateMode.onUserInteraction,
                    child: InputField(
                      controller: controller,
                      keyboardType: TextInputType.numberWithOptions(
                        decimal: true,
                      ),
                      validator: (value) {
                        if (controller.text.isEmpty) {
                          return "Field cannot be empty";
                        }
                        return null;
                      },

                      prefixIcon: Icon(Icons.monetization_on),
                      hintText: "Enter Amount",
                      labelText: "Amount",
                    ),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        if (_formKey.currentState!.validate()) {
                          result = double.parse(controller.text) * 122.74;
                        }
                      });
                    },
                    child: Text("Convert"),
                  ),
                  SizedBox(height: 20),
                  Text("BDT: $result"),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
