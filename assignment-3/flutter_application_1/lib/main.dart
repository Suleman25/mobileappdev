import 'package:flutter/material.dart';
 
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Expanded(
                child: Row(
                  children: [
                    // Left Column
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.all(8),
                            child: Text(
                              "Social Media",
                              style: TextStyle(fontSize: 24,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.bold,
                              ),
                              
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(8),
                            child: Text(
                              "Social media has become an integral part of modern life. Platforms like Facebook, Instagram, Twitter, and TikTok allow users to share updates, photos, and videos, family, and even strangers with similar interests. Social media has not only transformed personal communication but has also had a major impact on business, marketing, and entertainment. Brands use these platforms to reach their target audiences, engage with customers, and build communities around their products. However, while social media offers countless benefits, it also has its downsides, including privacy concerns, misinformation, and the potential for negative effects on mental health. Despite these challenges, social media continues to evolve, playing a pivotal role in shaping culture, influencing opinions, and driving trends worldwide.",
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              IconContainer(icon: Icons.home, label: "Home"),
                              IconContainer(icon: Icons.contact_page, label: "Contact"),
                              IconContainer(icon: Icons.phone, label: "Phone"),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                SocialIcon(icon: Icons.facebook, label: "Facebook"),
                                SocialIcon(icon: Icons.snapchat, label: "Snapchat"),
                                SocialIcon(icon: Icons.facebook, label: "Facebook"),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                    // Right Column
                    Expanded(
                      child: Column(
                        children: [
                          Container(
                            height: 200,
                            color: Colors.grey[300],
                            child: Center(
                              child: Image(
                                image: AssetImage('assets/images/img1.jpg'), // Added .jpg
                              ),
                            ),
                          ),
                          SizedBox(height: 8),
                          Container(
                            padding: EdgeInsets.all(8),
                            child: Text("Description"),
                          ),
                          Container(
                            padding: EdgeInsets.all(8),
                            child: Text(
                              "Social media has become an integral part of modern life. Platforms like Facebook, Instagram, Twitter, and TikTok allow users to share updates, photos, and videos, family, and even strangers with similar interests. Social media has not only transformed personal communication but has also had a major impact on business, marketing, and entertainment. Brands use these platforms to reach their target audiences, engage with customers, and build communities around their products. However, while social media offers countless benefits, it also has its downsides, including privacy concerns, misinformation, and the potential for negative effects on mental health. Despite these challenges, social media continues to evolve, playing a pivotal role in shaping culture, influencing opinions, and driving trends worldwide.",
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class IconContainer extends StatelessWidget {
  final IconData icon;
  final String label;

  IconContainer({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, size: 40),
        SizedBox(height: 4),
        Text(label),
      ],
    );
  }
}

class SocialIcon extends StatelessWidget {
  final IconData icon;
  final String label;

  SocialIcon({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, size: 24),
        SizedBox(width: 8),
        Text(label),
      ],
    );
  }
}
