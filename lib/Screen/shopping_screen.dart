import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ShoppingScreen extends StatelessWidget {
  const ShoppingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: const [
              Top(),
              Middle(),
              Bottom(),
            ],
          ),
        ));
  }
}

class Top extends StatelessWidget {
  const Top({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Padding(
          padding: EdgeInsets.all(11.0),
          child: CircleAvatar(
            backgroundImage: AssetImage('asset/img/image.png'),
            radius: 30,
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text('원치현',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600)),
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 110.0,
          ),
          child: Row(
            children: const [
              Icon(
                Icons.attach_money,
                size: 30.0,
              ),
              Text('4,230캐시',
                  style: TextStyle(
                    fontSize: 16.0,
                  ))
            ],
          ),
        ),
      ],
    );
  }
}

class Middle extends StatefulWidget {
  const Middle({Key? key}) : super(key: key);

  @override
  State<Middle> createState() => _MiddleState();
}

class _MiddleState extends State<Middle> {
  int _current = 0;

  List item = [1, 2, 3];

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Stack(
              children: [
                CarouselSlider(
                  options: CarouselOptions(
                    autoPlay: true,
                    autoPlayInterval: const Duration(seconds: 5),
                    autoPlayAnimationDuration: Duration(milliseconds: 400),
                    onPageChanged: (index, reason) {
                      setState(() {
                        _current = index;
                      });
                    },
                    height: 160.0,
                    viewportFraction: 1, // 페이지 당 1개의 슬라이더
                  ),
                  items: item.map((i) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                          decoration: BoxDecoration(color: Colors.amber),
                          child: Stack(
                            children: [
                              GestureDetector(
                                onTap: () {}, // 화면 이동
                                child: Image.asset(
                                  'asset/img/image${i}.png',
                                  fit: BoxFit.cover,
                                  width: MediaQuery
                                      .of(context)
                                      .size
                                      .width,
                                ),
                              ),
                              Positioned(
                                bottom: 10.0,
                                left: 16.0,
                                child: Row(
                                  children: [
                                    for (int i = 0; i < item.length; i++)
                                      Container(
                                        height: 13,
                                        width: 13,
                                        margin: EdgeInsets.all(7),
                                        decoration: BoxDecoration(
                                          color: _current == i
                                              ? Colors.black
                                              : Colors.white,
                                          shape: BoxShape.circle,
                                        ),
                                      ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        );
                      },
                    );
                  }).toList(),
                ),
              ],
            ),
            Material(
              child: Container(
                  height: 200.0,
                  child: Stack(children: [
                    Positioned(
                      top: 12.0,
                      left: 18.0,
                      child: Text('베스트 상품',
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.w600)),
                    ),
                    Positioned(
                      right: 10.0,
                      top: 5.0,
                      child: InkWell(
                        onTap: () {}, // 더보기 페이지로 이동
                        child: Container(
                          height: 50.0,
                          child: Row(
                            children: [
                              Text('더보기',
                                  style: TextStyle(
                                    fontSize: 16.0,
                                  )),
                              Icon(
                                Icons.arrow_forward_ios,
                                size: 14.0,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Stack(
                      children: [
                        Positioned(
                          top: 60.0,
                          left: 15.0,
                          child: Container(
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 25.0),
                                  child: InkWell(
                                    onTap: () {}, // 상품 페이지로 이동
                                    child: Column(
                                      children: [
                                        Ink(
                                          width: 90.0,
                                          height: 90.0,
                                          decoration: BoxDecoration(
                                            color: Colors.teal[100],
                                          ),
                                          child: Icon(
                                            Icons.coffee_maker_outlined,
                                            size: 60.0,
                                          ),
                                        ),
                                        Text('6,300캐시',
                                            style: TextStyle(
                                              fontSize: 20.0,
                                            ))
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 25.0),
                                  child: InkWell(
                                    onTap: () {}, // 상품 페이지로 이동
                                    child: Column(
                                      children: [
                                        Ink(
                                          width: 90.0,
                                          height: 90.0,
                                          decoration: BoxDecoration(
                                            color: Colors.teal[100],
                                          ),
                                          child: Icon(
                                            Icons.coffee_outlined,
                                            size: 60.0,
                                          ),
                                        ),
                                        Text('6,300캐시',
                                            style: TextStyle(
                                              fontSize: 20.0,
                                            ))
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 25.0),
                                  child: InkWell(
                                    onTap: () {}, // 상품 페이지로 이동
                                    child: Column(
                                      children: [
                                        Ink(
                                          width: 90.0,
                                          height: 90.0,
                                          decoration: BoxDecoration(
                                            color: Colors.teal[100],
                                          ),
                                          child: Icon(
                                            Icons.coffee,
                                            size: 60.0,
                                          ),
                                        ),
                                        Text('7,000캐시',
                                            style: TextStyle(
                                              fontSize: 20.0,
                                            ))
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ])),
            ),
          ],
        ));
  }
}

class Bottom extends StatelessWidget {
  const Bottom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.grey[300],
        child: Column(children: [
          // 첫 번째 줄
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 10.0,
                  bottom: 10.0,
                  right: 10.0,
                  left: 10.0,
                ),
                child: InkWell(
                  onTap: () {}, // 페이지 이동
                  child: Ink(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(5.0),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.coffee_rounded, size: 60.0,),
                        Padding(
                          padding: const EdgeInsets.only(top:8.0),
                          child: Text(('카페 베이커리'), style:TextStyle(fontSize:17.0,)),
                        ),
                      ],
                    ),
                    width: MediaQuery
                        .of(context)
                        .size
                        .width / 2 - 15,
                    height: 120,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 10.0,
                  bottom: 10.0,
                  right: 10.0,
                ),
                child: InkWell(
                  onTap: () {}, // 페이지 이동
                  child: Ink(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(5.0),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.shopping_cart_rounded, size: 60.0,),
                        Padding(
                          padding: const EdgeInsets.only(top:8.0),
                          child: Text(('G마켓'), style:TextStyle(fontSize:17.0,)),
                        ),
                      ],
                    ),
                    width: MediaQuery
                        .of(context)
                        .size
                        .width / 2 - 15,
                    height: 120,
                  ),
                ),
              ),
            ],
          ),
          // 2번째 줄
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 10.0,
                  bottom: 10.0,
                  right: 10.0,
                  left: 10.0,
                ),
                child: InkWell(
                  onTap: () {}, // 페이지 이동
                  child: Ink(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(5.0),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.accessibility_outlined, size: 60.0,),
                        Padding(
                          padding: const EdgeInsets.only(top:8.0),
                          child: Text(('외식'), style:TextStyle(fontSize:17.0,)),
                        ),
                      ],
                    ),
                    width: MediaQuery
                        .of(context)
                        .size
                        .width / 2 - 15,
                    height: 120,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 10.0,
                  bottom: 10.0,
                  right: 10.0,
                ),
                child: InkWell(
                  onTap: () {}, // 페이지 이동
                  child: Ink(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(5.0),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.house_sharp, size: 60.0,),
                        Padding(
                          padding: const EdgeInsets.only(top:8.0),
                          child: Text(('편의점'), style:TextStyle(fontSize:17.0,)),
                        ),
                      ],
                    ),
                    width: MediaQuery
                        .of(context)
                        .size
                        .width / 2 - 15,
                    height: 120,
                  ),
                ),
              ),
            ],
          ),
          // 3번째 줄
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 10.0,
                  bottom: 10.0,
                  right: 10.0,
                  left: 10.0,
                ),
                child: InkWell(
                  onTap: () {}, // 페이지 이동
                  child: Ink(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(5.0),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.airplane_ticket_outlined, size: 60.0,),
                        Padding(
                          padding: const EdgeInsets.only(top:8.0),
                          child: Text(('문화생활'), style:TextStyle(fontSize:17.0,)),
                        ),
                      ],
                    ),
                    width: MediaQuery
                        .of(context)
                        .size
                        .width / 2 - 15,
                    height: 120,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 10.0,
                  bottom: 10.0,
                  right: 10.0,
                ),
                child: InkWell(
                  onTap: () {}, // 페이지 이동
                  child: Ink(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(5.0),
                      ),
                    ),
                    width: MediaQuery
                        .of(context)
                        .size
                        .width / 2 - 15,
                    height: 120,
                  ),
                ),
              ),
            ],
          ),
        ]));
  }
}
