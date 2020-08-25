import 'package:fitness_app/const.dart';
import 'package:fitness_app/page.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int selectindex;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Hello Almamun",
                        style:
                            TextStyle(fontSize: 16, color: Color(0xff869CEE)),
                      ),
                      Row(
                        children: <Widget>[
                          Text(
                            "Find A ",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w900),
                          ),
                          Text("Workout",
                              style: TextStyle(
                                  color: Color(0xff4F59DC),
                                  fontSize: 20,
                                  fontWeight: FontWeight.w900))
                        ],
                      )
                    ],
                  ),
                  Icon(Icons.search)
                ],
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            child: Stack(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    height: 190,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Colors.indigo,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(130),
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                          topRight: Radius.circular(10),
                        )),
                  ),
                ),
                Image.asset(
                  "assets/images/Group 1.png",
                  height: 220,
                ),
                Positioned(
                    top: 30,
                    right: 50,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Text("Legs ",
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w800)),
                                Text("and ",
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                    ))
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Text("Glutes ",
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w800)),
                                Text("workout ",
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                    ))
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 15),
                              child: Row(
                                children: <Widget>[
                                  Image.asset(
                                    "assets/images/Group 2359.png",
                                    height: 10,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "Advanced",
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 15),
                              child: Row(
                                children: <Widget>[
                                  Image.asset("assets/images/stopwatch.png",
                                      height: 10, color: Colors.white),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "45 min",
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 15),
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => page()));
                                  });
                                },
                                child: Container(
                                  height: 35,
                                  width: 120,
                                  decoration: BoxDecoration(
                                      color: Colors.white.withOpacity(.15),
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Center(
                                    child: Text(
                                      "Start Workout",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 14),
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 10,
            ),
            child: Container(
              height: 128.4,
              color: boxColor,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Today's Activity",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: <Widget>[
                          Text(
                            "Details",
                            style: TextStyle(color: textColor),
                          ),
                          Icon(Icons.arrow_forward)
                        ],
                      )
                    ],
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(
                          today.length,
                          (index) => todayAC(
                                index: index,
                              )),
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 10,
            ),
            child: Container(
              height: 135,
              color: boxColor,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Daily Activity",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: <Widget>[
                          Text(
                            "Details",
                            style: TextStyle(color: textColor),
                          ),
                          Icon(Icons.arrow_forward)
                        ],
                      )
                    ],
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(
                          daily.length,
                          (index) => dailyAC(
                                index: index,
                              )),
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            height: 84,
            width: MediaQuery.of(context).size.width,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children:
                    List.generate(navigation.length, (index) => nav(index))),
          )
        ],
      ),
    );
  }

  Widget nav(int index) => InkWell(
        onTap: () {
          setState(() {
            selectindex = index;
          });
        },
        child: Container(
          height: 66,
          width: 66,
          decoration: BoxDecoration(
            color: boxColor,
            borderRadius: BorderRadius.circular(20),
            boxShadow: kboxShadow,
          ),
          child: selectindex == index
              ? Container(
                  height: 59,
                  width: 59,
                  decoration: BoxDecoration(
                      color: boxColor,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: kIShadow),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset(
                        navigation[index].icon,
                        height: 22,
                        color: textColor,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        navigation[index].title,
                        style: TextStyle(color: textColor),
                      )
                    ],
                  ),
                )
              : Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      navigation[index].icon,
                      height: 22,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      navigation[index].title,
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                ),
        ),
      );
}

class todayAC extends StatelessWidget {
  const todayAC({
    Key key,
    this.index,
  }) : super(key: key);

  final int index;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.2),
      child: Padding(
        padding: const EdgeInsets.only(right: 6),
        child: Container(
          height: 80,
          width: 140,
          margin: EdgeInsets.only(top: 8),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: boxColor,
              boxShadow: kboxShadow),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    today[index].icon,
                    height: 20,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    today[index].title,
                    style: TextStyle(letterSpacing: 2),
                  )
                ],
              ),
              Text(
                today[index].count,
                style: TextStyle(
                    color: Colors.blue[700],
                    fontWeight: FontWeight.bold,
                    fontSize: 26),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class dailyAC extends StatelessWidget {
  const dailyAC({
    Key key,
    this.index,
  }) : super(key: key);

  final int index;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.2),
      child: Padding(
        padding: const EdgeInsets.only(right: 6),
        child: Container(
          height: 80,
          width: 66,
          margin: EdgeInsets.only(top: 8),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: boxColor,
              boxShadow: kboxShadow),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                daily[index].day,
                style: TextStyle(
                    letterSpacing: 0, fontSize: 12, color: Colors.grey),
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                daily[index].date,
                style: TextStyle(
                    color: Colors.blue[700],
                    fontWeight: FontWeight.bold,
                    fontSize: 26),
              )
            ],
          ),
        ),
      ),
    );
  }
}
