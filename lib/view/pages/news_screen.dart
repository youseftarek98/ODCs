import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'news_details.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: const Text(
          "News Screen",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold , fontSize: 30),
        ),
        backgroundColor: Colors.white,
      ),
      body: InkWell(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => const NewsDetails()));
        },
        child: Align(
          alignment: Alignment.topCenter,
          child: Container(
            padding: const EdgeInsets.all(15),
            width: MediaQuery.of(context).size.width * 0.9,
            height: MediaQuery.of(context).size.width * 0.8,
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.circular(15),
              // image: DecorationImage(image: AssetImage(''))
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'ODCs',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 26),
                    ),
                    Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.deepOrange),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            child: SvgPicture.asset(
                              'assets/icons_svg/share.svg',
                              color: Colors.white,
                              height: 30,
                              width: 30,
                            ),
                            onTap: () {
                              print('Day =================');
                            },
                          ),

                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 10),
                            height: 20,
                            width: 2,
                            color: Colors.white,
                          ),
                          //  Divider(color: Colors.black87 , thickness:8 , height: 4) ,
                          InkWell(
                            child: SvgPicture.asset(
                              'assets/icons_svg/copy.svg',
                              color: Colors.white,
                              height: 30,
                              width: 30,
                            ),
                            onTap: () {
                              print('Copy =================');
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: Row(
                    children: const [
                      Text(
                        'Orange',
                        style: TextStyle(
                            color: Colors.deepOrange,
                            fontSize: 32,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text('Digital Center',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 32,
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
                const Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      'ODC Supports All Universities',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
