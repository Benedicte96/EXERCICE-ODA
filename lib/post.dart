import 'package:flutter/material.dart';

class PostWidget extends StatelessWidget{
   PostWidget({Key? key}): super(key:key);

  final List postItems = [

     {
      "pseudo": 'jimin',
      "photo":"assets/images/jimin.jpeg",
      "photoProfil":"assets/images/profil/jimin-bts.jpeg",
      "description":"im jimin"
    },
     {
      "pseudo": 'teahung',
      "photo":"assets/images/teahung.jpeg",
      "photoProfil":"assets/profil/v-bts.jpeg",
      "description":"im good boys"
    },
     {
      "pseudo": 'hobi',
      "photo":"assets/images/hobi.jpeg",
      "photoProfil":"assets/profil/hobi-bts.jpeg",
      "description":"im your hope, your my hope, im j-hope"
    },
     {
      "pseudo": 'jungkook',
      "photo":"assets/images/jungkook.jpeg",
      "photoProfil":"assets/profil/kookie.jpeg",
      "description":"international play boy"
    },
     {
      "pseudo": 'namjoon',
      "photo":"assets/images/namjoon.jpeg",
      "photoProfil":"assets/profil/joonie.jpeg",
      "description":"im your hope, your my hope, im j-hope"
    },


  ];
  @override
  Widget build(BuildContext context){
    return Column(
      children: postItems.map((post) {
        return  Column(
          children: [
            Container(
              height: 50,
              //color: Colors.grey,
              margin: const EdgeInsets.only(top: 10),
              child: Row(
                children:[
                  CircleAvatar(backgroundImage: AssetImage(post['photo']),),
                  const SizedBox(width: 10,),
                  Text(
                    post['pseudo'],
                    style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Image.asset(
                      'assets/images/badge.jpeg',
                      height: 20,
                      ),
                      Expanded(
                        child: Container()
                        ),
                      IconButton(
                        onPressed: (){}, 
                        icon: const Icon(Icons.more_horiz),
                       )
                ],
              ),
            ),
            Container(
          height: 300,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(post['photo']),
              fit: BoxFit.cover,
                )
              ),
              ),
              Row(
                children:[
                  IconButton(
                    onPressed: (){}, 
                    icon: const Icon(Icons.favorite_outline),
                    ),
                  IconButton(
                    onPressed: (){}, 
                    icon: const Icon(Icons.message_outlined),
                    ),
                  IconButton(
                    onPressed: (){}, 
                    icon: const Icon(Icons.send_outlined),
                    ),
                    Expanded(
                        child: Container()
                        ),
                      IconButton(
                    onPressed: (){}, 
                    icon: const Icon(Icons.bookmark_outline),
                    ),
                ],
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                 child: Row(
                  children:[
                    CircleAvatar(
                    radius: 10,
                    backgroundImage: AssetImage(post['photo']),
                    ),
                    const SizedBox(width: 10,),
                    RichText(
                      text: TextSpan(
                        text:'aime par ',
                        style:DefaultTextStyle.of(context).style,
                        children: [
                          TextSpan(
                            text: post['pseudo.'],
                            style: const TextStyle(fontWeight: FontWeight.w600),
                          ),
                          const TextSpan(text: 'et '),
                           const TextSpan(
                            text: '123 autres personnes',
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                        ],
                      ) )
                ],
              )
              ),
              const SizedBox(height: 5,),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
               child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                   Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                Text(post['pseudo'],
                style: const TextStyle(fontWeight: FontWeight.bold) 
                ,),
                const SizedBox(width: 5,),
                Expanded(
                  child: Text(
                    post['description'],
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  )
                  ,),
                  const SizedBox(
                    width:5
                  ),
                  Text('see more',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,color:Colors.grey.shade400
                  ),
                  )
              ],
              ),
              const SizedBox(height: 10,),
               Text('see more',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,color:Colors.grey.shade400
                  ),
                  ),
                  const SizedBox(height: 10,),
                  Row(
                    children:[
                      Text('16 min ago. ',
                      style:TextStyle(
                        fontSize: 12,
                        fontWeight:FontWeight.w500,
                        color: Colors.grey.shade400
                        )
                      ),
                      const Text('translate',
                      style:TextStyle(fontSize: 12,fontWeight: FontWeight.w600)
                      )

                    ],
                  )
             

               ]),
              ),
             
          ],
          );
      }).toList(),
    );
  }
}
