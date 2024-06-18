import 'package:flutter/material.dart';

import '../Models/my_post.dart';
class gridViewReusable extends StatefulWidget {
  const gridViewReusable({super.key});

  @override
  State<gridViewReusable> createState() => _gridViewReusableState();
}

class _gridViewReusableState extends State<gridViewReusable> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
          itemCount: lstMyPost.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 15,
            crossAxisSpacing: 15,
            childAspectRatio: 0.8,
          ),
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    //color: Colors.white,
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: ShaderMask(
                      shaderCallback: (rect) {
                        return LinearGradient(
                          colors: [
                            Colors.black,
                            Colors.transparent,
                          ],
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                        ).createShader(
                          Rect.fromLTRB(rect.left, rect.top,
                              rect.width, rect.height),
                        );
                      },
                      blendMode: BlendMode.darken,
                      child: Image.network(
                        '${lstMyPost[index].image}',
                        fit: BoxFit.fill,
                        height: double.infinity,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 10,
                  left: 10,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('${lstMyPost[index].title}',style: TextStyle(color: Colors.white.withOpacity(0.8),fontSize: 18),),
                      SizedBox(height: 3,),
                      Text('#welcome to India lets go',style: TextStyle(color: Colors.white.withOpacity(0.7)),),
                      Text('#travel', style: TextStyle(color: Colors.white.withOpacity(0.7)),),
                    ],
                  ),
                ),
                Positioned(
                  top: 0,
                  left: 0,
                  child: Container(
                    width: MediaQuery.of(context).size.width*0.45,
                    height: 40,
                    //color: Colors.cyan,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Stack(
                                children: [
                                  Container(
                                    //color: Colors.pink,
                                    width: 40,
                                    height: 20,
                                  ),
                                  Positioned(
                                    bottom: 0,
                                    left: 0,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.white,
                                        border: Border.all(
                                          color: Colors.white.withOpacity(0.5),
                                          width: 2,
                                        ),
                                      ),
                                      width: 20,
                                      height: 20,
                                      child: CircleAvatar(
                                        backgroundImage: NetworkImage(
                                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTyW2MAFrFnfa_bT1jSttLbmvfotJcqQyCCGg&s'),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 0,
                                    left: 10,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.white,
                                        border: Border.all(
                                          color: Colors.white.withOpacity(0.5),
                                          width: 2,
                                        ),
                                      ),
                                      width: 20,
                                      height: 20,
                                      child: CircleAvatar(
                                        backgroundImage: NetworkImage(
                                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTyW2MAFrFnfa_bT1jSttLbmvfotJcqQyCCGg&s'),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 0,
                                    left: 20,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.white,
                                        border: Border.all(
                                          color: Colors.white.withOpacity(0.5),
                                          width: 2,
                                        ),
                                      ),
                                      width: 20,
                                      height: 20,
                                      child: CircleAvatar(
                                        backgroundImage: NetworkImage(
                                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTyW2MAFrFnfa_bT1jSttLbmvfotJcqQyCCGg&s'),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(width: 5,),
                              Text('11.1k views',style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.bold),),
                            ],
                          ),
                          SizedBox(width: 10),
                          Icon(
                            Icons.more_horiz,
                            size: 25,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            );
          }),
    );
  }
}
