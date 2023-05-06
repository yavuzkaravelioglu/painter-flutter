// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:paint_burak/widgets/text_widgets/font_montserrat_text.dart';

import '../text_widgets/font_orbitron_text.dart';

class CustomForm extends StatefulWidget {
  const CustomForm({super.key});

  @override
  State<CustomForm> createState() => _CustomFormState();
}

// Define a corresponding State class.
// This class holds data related to the form.
class _CustomFormState extends State<CustomForm> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  //
  // Note: This is a `GlobalKey<FormState>`,
  // not a GlobalKey<MyCustomFormState>.

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FormFieldHeader("Personal Info"),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: TextFormField(
              scrollPadding: EdgeInsets.zero,
              // The validator receives the text that the user has entered.
              validator: (name) {
                if (name == null || name.isEmpty) {
                  return 'This is a required field';
                }
                return null;
              },
              cursorColor: Colors.black,
              decoration: CustomerInputDecoration("name"),
              style: InputTextStyle(),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: TextFormField(
              scrollPadding: EdgeInsets.zero,
              // The validator receives the text that the user has entered.
              validator: (surname) {
                if (surname == null || surname.isEmpty) {
                  return 'This is a required field';
                }
                return null;
              },
              cursorColor: Colors.black,
              decoration: CustomerInputDecoration("surname"),
              style: InputTextStyle(),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          FormFieldHeader("Contact Detail"),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: TextFormField(
              // The validator receives the text that the user has entered.
              validator: (adress) {
                if (adress == null || adress.isEmpty) {
                  return 'This is a required field';
                }
                return null;
              },
              cursorColor: Colors.black,
              decoration: CustomerInputDecoration("email address"),
              style: InputTextStyle(),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: TextFormField(
              // The validator receives the text that the user has entered.
              validator: (adress) {
                if (adress == null || adress.isEmpty) {
                  return 'This is a required field';
                }
                return null;
              },
              cursorColor: Colors.black,
              decoration: CustomerInputDecoration("phone number"),
              style: InputTextStyle(),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith((states) {
                  // If the button is pressed, return green, otherwise blue
                  if (states.contains(MaterialState.pressed)) {
                    return const Color.fromARGB(255, 56, 56, 56);
                  }
                  return Colors.black;
                }),
              ),
              onPressed: () {
                // Validate returns true if the form is valid, or false otherwise.
                if (_formKey.currentState!.validate()) {
                  // If the form is valid, display a snackbar. In the real world,
                  // you'd often call a server or save the information in a database.
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Processing Data')),
                  );
                }
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Text(
                  'Submit',
                  style: GoogleFonts.montserrat(
                    textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      letterSpacing: 2,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  FontMontserratText FormFieldHeader(String header) {
    return FontMontserratText(
      text: header,
      fontSize: 20,
      color: Colors.black,
      letterSpacing: 2,
      containerAlign: Alignment.topLeft,
      textAlign: TextAlign.left,
    );
  }

  TextStyle InputTextStyle() {
    return GoogleFonts.montserrat(
      textStyle: const TextStyle(
        color: Colors.black,
        fontSize: 10,
        letterSpacing: 2,
      ),
    );
  }

  InputDecoration CustomerInputDecoration(String hintText) {
    return InputDecoration(
      hintText: hintText,
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: Colors.grey,
        ),
      ),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          width: 1,
          color: Colors.black,
        ),
      ),
    );
  }
}
