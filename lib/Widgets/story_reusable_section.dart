import 'package:flutter/material.dart';

import '../Models/stories.dart';

class story_reusable extends StatelessWidget {
  const story_reusable({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.28,
         //color: Colors.pink,
        width: double.infinity,
        child: ListView.builder(
          itemCount: lstStory.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(right: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Container(
                        width: 135,
                        height: MediaQuery.of(context).size.height * 0.24,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.network(
                            height: MediaQuery.of(context).size.height * 0.24,
                            '${lstStory[index].imageUrl}',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 10,
                        left: 10,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 5, vertical: 3),
                            child: Text('Live',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12)),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Text(
                        '${lstStory[index].name}',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(width: 5),
                      Icon(Icons.verified, color: Colors.blue, size: 15),
                    ],
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
