import 'package:flutter/material.dart';
import 'package:form_valitation/widget/CustomForm.dart';

class FormBody extends StatefulWidget {
  const FormBody({super.key});

  @override
  State<FormBody> createState() => _FormBodyState();
}

class _FormBodyState extends State<FormBody> {
  final _formKey = GlobalKey<FormState>();
  _hanldeFormData() {
    // validate the form data here
    if (_formKey.currentState!.validate()) {
      // perform your action here if form data is valid

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: const Row(
            children: [
              Icon(Icons.check_circle, color: Colors.white), // Add an icon
              SizedBox(width: 10),
              Expanded(
                child: Text(
                  "Chala ja bhai ho gaya tera validation!",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          backgroundColor: Colors.green, // Change the background color
          behavior: SnackBarBehavior.floating, // Make it floating
          margin: const EdgeInsets.all(20), // Add margin for better visibility
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10), // Rounded corners
          ),
          duration: const Duration(seconds: 3), // Adjust display duration
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: const Row(
            children: [
              Icon(Icons.check_circle, color: Colors.white), // Add an icon
              SizedBox(width: 10),
              Expanded(
                child: Text(
                  'form assa sa fill karo na bhaiya!',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          backgroundColor: Colors.red, // Change the background color
          behavior: SnackBarBehavior.floating, // Make it floating
          margin: const EdgeInsets.all(20), // Add margin for better visibility
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10), // Rounded corners
          ),
          duration: const Duration(seconds: 3), // Adjust display duration
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            Customform(
              obscureText: false,
              hintTextdata: 'abc@gmail.com',
              labelTextdata: "your email",
              validHintTextdata: "email is required",
              customValidator: (value) {
                if (!RegExp(r'[a-z0-9]+@gmail\.com$').hasMatch(value!)) {
                  return "Please enter a valid @gmail.com email";
                }
                return null;
              },
            ),
            const Customform(
              obscureText: false,
              hintTextdata: '018XXXXXXXX',
              labelTextdata: "Phone Number",
              validHintTextdata: "phone number is required",
            ),
            Customform(
                obscureText: true,
                hintTextdata: '@2\$3a&6',
                labelTextdata: "Password:",
                validHintTextdata: "password is required",
                customValidator: (value) {
                  if (value!.length < 6) {
                    return "Password must be at least 6 characters";
                  } else if (!RegExp(r'[A-Za-z0-9]$').hasMatch(value)) {
                    return "Password must include letters and numbers";
                  } else {
                    return null; // Valid password
                  }
                }),
            const SizedBox(height: 10),
            Container(
              child: ElevatedButton(
                onPressed: _hanldeFormData,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text(
                  "submit",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
