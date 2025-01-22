import 'package:flutter/material.dart';

class arts extends StatelessWidget {
  final List<Map<String, String>> fields = [
    {'field': 'Dance', 'request': ''},
    {'field': 'Music', 'request': ''},
    {'field': 'Painting', 'request': ''},
    {'field': 'Literature', 'request': ''},
    {'field': 'Cinema', 'request': ''},
    {'field': 'Photography', 'request': ''},
    {'field': 'Sculpture', 'request': ''},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Arts'),
      ),
      body: ListView.builder(
        itemCount: fields.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.all(10),
            child: ListTile(
              title: Text(fields[index]['field']!),
              subtitle: Text(fields[index]['request']!),
              trailing: ElevatedButton(
                onPressed: () {
                  // Show a dialog with the request for each field
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: Text(fields[index]['field']!),
                      content: Text(fields[index]['request']!),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text('Close'),
                        ),
                      ],
                    ),
                  );
                },
                child: Text('Request'),
              ),
            ),
          );
        },
      ),
    );
  }
}
