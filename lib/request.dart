import 'package:flutter/material.dart';



class RequestPage extends StatefulWidget {
  @override
  _RequestPageState createState() => _RequestPageState();
}

class _RequestPageState extends State<RequestPage> {
  final TextEditingController interestController = TextEditingController();
  String? selectedItem = 'Select';

  final List<String> items = ['folk dance', 'group dance'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Request Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Items (Select Box)
            DropdownButtonFormField<String>(
              value: selectedItem,
              onChanged: (String? newValue) {
                setState(() {
                  selectedItem = newValue;
                });
              },
              items: items.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              decoration: InputDecoration(
                labelText: 'Items',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),

            // Why you are interested?
            TextField(
              controller: interestController,
              decoration: InputDecoration(
                labelText: 'Why you are interested?',
                border: OutlineInputBorder(),
              ),
              maxLines: 4,
            ),
            SizedBox(height: 16),

            // Submit Button
            ElevatedButton(
              onPressed: () {
                // Handle submit logic here
                String interest = interestController.text;

                // Example output
                print('Selected Item: $selectedItem');
                print('Interest: $interest');
              },
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
