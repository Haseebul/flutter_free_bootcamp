import 'package:flutter/material.dart';

class TextFormFieldWidget extends StatelessWidget {
  const TextFormFieldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              onChanged: (value) {
                print(value);
              },
              //keyboardType: TextInputType.phone,
              cursorColor: Colors.green,
              //enabled: true,
              style: const TextStyle(
                color: Colors.green,
              ),
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.green.withOpacity(0.5),
                  ),
                ),
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.green),
                ),
                errorBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red),
                ),
                //icon: Icon(Icons.add),
                prefixIcon: const Icon(Icons.email_outlined),
                // fillColor: Colors.green.withOpacity(0.3),
                // filled: true,
                hintText: "Enter an email",
                hintStyle: const TextStyle(
                  color: Colors.green,
                ),
                // labelText: "Email",
                // labelStyle: const TextStyle(
                //   color: Colors.green,
                // ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
