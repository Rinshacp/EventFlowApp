import 'package:flutter/material.dart';

class EditProfilePage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  EditProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Profile'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                SizedBox(height: 20),
                buildTextField('Name', 'NAFIYA SHIRIN. C'),
                buildTextField('Date of Birth', '29-09-2004'),
                buildTextField('Gender', 'Female'),
                buildTextField('Department', 'O+'),
                buildTextField('Religion', 'Islam'),
                buildTextField('Address', 'Your Address Here'),
                buildTextField('Place', 'Your Place Here'),
                buildTextField('Email', 'example@email.com'),
                buildTextField('Phone Number', '+1234567890'),
                buildTextField('Username', 'username123'),
                buildTextField('Password', '********', isPassword: true),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      // Handle save action
                    }
                  },
                  child: Text('Save Changes'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildTextField(String label, String initialValue,
      {bool isPassword = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextFormField(
        initialValue: initialValue,
        obscureText: isPassword,
        decoration: InputDecoration(
          labelText: label,
          border: OutlineInputBorder(),
        ),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return '$label cannot be empty';
          }
          return null;
        },
      ),
    );
  }
}
