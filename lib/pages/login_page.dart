import 'package:flutter/material.dart';
import 'package:school_route_optimizer/components/input_field.dart';
import 'package:school_route_optimizer/components/submit_button.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final dynamic usernameController = TextEditingController();
  final dynamic passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 100),
              Icon(
                Icons.lock,
                size: 100,
                color: Colors.grey[800],
              ),
              const SizedBox(height: 50),
              Text(
                'Welcome Back!',
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 20,
                ),
              ),
              const SizedBox(height: 25),
              const UserTypeDropdownButton(),
              const SizedBox(height: 25),
              InputField(
                  controller: usernameController,
                  hintText: 'Username',
                  obscureText: false),
              const SizedBox(height: 30),
              InputField(
                controller: passwordController,
                hintText: 'Password',
                obscureText: true,
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Forgot Password!',
                      style: TextStyle(
                        color: Colors.grey[600],
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 40),
              SubmitButton(
                onTap: signInSubmit,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void signInSubmit() {}
}

const List<String> list = <String>['Select User-Type', 'Driver', 'Student'];

class UserTypeDropdownButton extends StatefulWidget {
  const UserTypeDropdownButton({super.key});

  @override
  State<UserTypeDropdownButton> createState() => _DropdownButtonExampleState();
}

class _DropdownButtonExampleState extends State<UserTypeDropdownButton> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: ButtonTheme(
        alignedDropdown: true,
        child: DropdownButtonFormField<String>(
          style: TextStyle(
              color: Colors.grey[800],
              fontSize: 16,
              fontWeight: FontWeight.w500),
          value: dropdownValue,
          icon: const Icon(Icons.arrow_drop_down),
          elevation: 16,
          borderRadius: BorderRadius.circular(10.0),
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(vertical: 15),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.grey.shade400,
                width: 1.0,
              ),
              borderRadius: BorderRadius.circular(5.0),
            ),
            disabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.white,
                width: 1.0,
              ),
              borderRadius: BorderRadius.circular(10.0),
            ),
            filled: true,
            fillColor: Colors.grey[200],
          ),
          dropdownColor: Colors.white,
          onChanged: (String? value) {
            // This is called when the user selects an item.
            setState(() {
              dropdownValue = value!;
            });
          },
          items: list.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
      ),
    );
  }
}
