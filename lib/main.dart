import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Project(),
  ));
}

class Project extends StatefulWidget {
  const Project({Key? key}) : super(key: key);

  @override
  State<Project> createState() => _ProjectState();
}

class _ProjectState extends State<Project> {
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        padding: const EdgeInsets.fromLTRB(28, 14, 28, 34),
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
              Color.fromARGB(255, 254, 236, 188),
              Color.fromARGB(255, 203, 190, 158),
            ])),
        child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(44),
                //color: Colors.black
                color: Color.fromARGB(255, 255, 203, 6)),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.07,
                  ),
                  SizedBox(
                      width: MediaQuery.of(context).size.width * 0.8,
                      height: MediaQuery.of(context).size.height * 0.45,
                      child: const Image(
                        image: AssetImage('asset/food.jpeg'),
                        fit: BoxFit.fitHeight,
                      )),
                  Container(
                    child: ClipRect(
                      child: Column(
                        children: <Widget>[
                          Container(
                            child: buildIndicator(),
                            padding: EdgeInsets.all(17),
                          ),
                          CarouselSlider(
                              items: [
                                Column(
                                  children: [
                                    Container(
                                      alignment: Alignment.center,
                                      child: RichText(
                                        textAlign: TextAlign.center,
                                        text: TextSpan(
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 22,
                                                fontWeight: FontWeight.w900),
                                            children: <TextSpan>[
                                              TextSpan(
                                                text: 'Fast ',
                                                style: TextStyle(
                                                    color: Colors.yellow,
                                                    fontSize: 22),
                                              ),
                                              TextSpan(text: 'delivery at  '),
                                              TextSpan(text: '     your'),
                                              TextSpan(
                                                  text: ' home',
                                                  style: TextStyle(
                                                      color: Colors.yellow)),
                                            ]),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 19,
                                    ),
                                    Container(
                                      child: Text(
                                        'All the best restaurants wit their top menu waiting for you they can\'t wait for your order!',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(color: Colors.black54),
                                      ),
                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    Container(
                                      alignment: Alignment.center,
                                      child: RichText(
                                        textAlign: TextAlign.center,
                                        text: TextSpan(
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 22,
                                                fontWeight: FontWeight.w900),
                                            children: <TextSpan>[
                                              TextSpan(
                                                text: 'Fast ',
                                                style: TextStyle(
                                                    color: Colors.yellow,
                                                    fontSize: 22),
                                              ),
                                              TextSpan(text: 'delivery at  '),
                                              TextSpan(text: '     your'),
                                              TextSpan(
                                                  text: ' home',
                                                  style: TextStyle(
                                                      color: Colors.yellow)),
                                            ]),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 19,
                                    ),
                                    Container(
                                      child: Text(
                                        'All the best restaurants wit their top menu waiting for you they can\'t wait for your order!',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(color: Colors.black54),
                                      ),
                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    Container(
                                      alignment: Alignment.center,
                                      child: RichText(
                                        textAlign: TextAlign.center,
                                        text: TextSpan(
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 22,
                                                fontWeight: FontWeight.w900),
                                            children: <TextSpan>[
                                              TextSpan(
                                                text: 'Fast ',
                                                style: TextStyle(
                                                    color: Colors.yellow,
                                                    fontSize: 22),
                                              ),
                                              TextSpan(text: 'delivery at  '),
                                              TextSpan(text: '     your'),
                                              TextSpan(
                                                  text: ' home',
                                                  style: TextStyle(
                                                      color: Colors.yellow)),
                                            ]),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 19,
                                    ),
                                    Container(
                                      child: Text(
                                        'All the best restaurants wit their top menu waiting for you they can\'t wait for your order!',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(color: Colors.black54),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                              options: CarouselOptions(
                                height:
                                    MediaQuery.of(context).size.height * 0.19,

                                aspectRatio: 4/3,

                                //   viewportFraction: 0.8,
                                initialPage: 0,
                                enableInfiniteScroll: true,
                                reverse: false,
                                autoPlay: true,
                                autoPlayInterval: Duration(seconds: 3),
                                autoPlayAnimationDuration:
                                    Duration(milliseconds: 800),
                                autoPlayCurve: Curves.fastOutSlowIn,
                                enlargeCenterPage: true,
                                onPageChanged: (index, reason) {
                                  setState(() => activeIndex = index);
                                },
                                scrollDirection: Axis.horizontal,
                              )),
                          ElevatedButton(
                            onPressed: () {},
                            child: Text('Get Started',style: TextStyle(color: Colors.white),),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.black,
                              padding: const EdgeInsets.only(left: 50.0, top:7 ,right: 50.0,bottom: 7),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),

                            ),
                          )
                        ],
                      ),
                    ),
                    width: MediaQuery.of(context).size.width * 0.74,
                    height: MediaQuery.of(context).size.height * 0.33,
                    decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(25)),
                  ),
                ],
              ),
            )),
      ),
    ));
  }

  Widget buildIndicator() => AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: 3,
        effect: ExpandingDotsEffect(
            dotHeight: 7,
            dotWidth: 7,
            activeDotColor: Colors.black,
            dotColor: Colors.black12),
      );
}
