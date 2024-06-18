import 'package:flutter/material.dart';

class ListView_section extends StatelessWidget {
  const ListView_section({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.50,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 15),
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Container(
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height * 0.35,
                      color: Color(0xFF333333).withOpacity(0.5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Image.network(
                                width: double.infinity,
                                'https://cdn.britannica.com/80/155980-050-3A532B36/Restaurant-village-Alpine-Grindelwald-Switzerland.jpg',
                                fit: BoxFit.cover),
                          ),
                          const SizedBox(height: 5),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        width: 40,
                                        height: 42,
                                        // color: Colors.indigo,
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          child: Image.network(
                                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTyW2MAFrFnfa_bT1jSttLbmvfotJcqQyCCGg&s',
                                              fit: BoxFit.cover),
                                        ),
                                      ),
                                      const SizedBox(width: 10),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text('Sreypich',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold)),
                                          Text('2 hours ago',
                                              style: TextStyle(
                                                  color: Colors.grey)),
                                        ],
                                      )
                                    ],
                                  ),
                                  const SizedBox(height: 8),
                                  Text(
                                      'Switzerland is the best contry in the world e world The best foode world The best foode world The best foode world The best food',
                                      maxLines: 2,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold)),
                                  Text(
                                      'The best food ever made in the world The best food ever made in the world The best cv ',
                                      maxLines: 2,
                                      style: TextStyle(color: Colors.grey)),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 135,
                  //bottom: 125,
                  right: 35,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFf8eb48),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                      child: Row(
                        children: [
                          Icon(Icons.favorite_border,
                              color: Colors.black, size: 15),
                          SizedBox(width: 5),
                          Text('Like',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 12)),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
