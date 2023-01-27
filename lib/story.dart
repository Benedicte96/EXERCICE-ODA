import 'package:flutter/material.dart';

class StoryWidget extends StatelessWidget {
   StoryWidget({Key? key}) : super(key: key);
  
  final List storyItems = [
    {
      "pseudo": 'jimin',
      "photo":"assets/images/jimin.jpeg",
    },
     {
      "pseudo": 'teahung',
      "photo":"assets/images/teahung.jpeg",
    },
     {
      "pseudo": 'hobi',
      "photo":"assets/images/hobi.jpeg",
    },
    //  {
    //   "pseudo": 'jin',
    //   "photo":"assets/images/jin.jpeg",
    // },
    //  {
    //   "pseudo": 'suga',
    //   "photo":"assets/images/suga.jpeg",
    // },
     {
      "pseudo": 'namjoon',
      "photo":"assets/images/namjoon.jpeg",
    },
     {
      "pseudo": 'jungkook',
      "photo":"assets/images/jungkook.jpeg",
    },
  
  ];

  @override
  Widget build(BuildContext context){
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: storyItems.map((story) {
            return Container(
            margin: const EdgeInsets.symmetric(horizontal: 5),
            child: Column(
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset(
                      'assets/images/insta-circle.jpeg',
                      height: 70,
                      ),
                    Image.asset(
                      'assets/images/insta-circle.jpeg',
                      height: 68,
                      ),
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 30,
                  backgroundImage: AssetImage(story['photo']),
                ),
                ],
                ),
                const SizedBox(height: 8,),
                Text(story['pseudo']),
              ],
            )
          );
        }).toList()
      ),
    );
  }
}

