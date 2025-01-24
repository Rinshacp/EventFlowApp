import 'package:flutter/material.dart';


class GalleryScreen extends StatelessWidget {
  final List<Map<String, String>> galleryItems = [
    {
      'photo': 'https://via.placeholder.com/150', // Replace with actual image URL
      'review': 'Beautiful event with amazing people.',
      'dateTime': 'January 20, 2025 - 10:30 AM',
    },
    {
      'photo': 'https://via.placeholder.com/150',
      'review': 'An unforgettable day full of memories.',
      'dateTime': 'January 18, 2025 - 2:00 PM',
    },
    {
      'photo': 'https://via.placeholder.com/150',
      'review': 'Wonderful team effort captured here.',
      'dateTime': 'January 15, 2025 - 5:45 PM',
    },
    {
      'photo': 'https://via.placeholder.com/150',
      'review': 'Celebrating the achievements together.',
      'dateTime': 'January 10, 2025 - 9:00 AM',
    },
    {
      'photo': 'https://via.placeholder.com/150',
      'review': 'A moment of joy and laughter.',
      'dateTime': 'January 5, 2025 - 4:15 PM',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gallery Screen'),
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
            childAspectRatio: 0.8,
          ),
          itemCount: galleryItems.length,
          itemBuilder: (context, index) {
            final item = galleryItems[index];
            return GalleryCard(
              photo: item['photo']!,
              review: item['review']!,
              dateTime: item['dateTime']!,
            );
          },
        ),
      ),
    );
  }
}

class GalleryCard extends StatelessWidget {
  final String photo;
  final String review;
  final String dateTime;

  const GalleryCard({
    required this.photo,
    required this.review,
    required this.dateTime,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Photo
          ClipRRect(
            borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
            child: Image.network(
              photo,
              height: 120,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Review
                Text(
                  review,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 4),
                // Date & Time
                Text(
                  dateTime,
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey[600],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
