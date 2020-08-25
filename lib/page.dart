import 'package:fitness_app/const.dart';
import 'package:flutter/material.dart';

class page extends StatefulWidget {
  @override
  _pageState createState() => _pageState();
}

class _pageState extends State<page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: boxColor,
      appBar: AppBar(
        backgroundColor: boxColor,
        elevation: 0,
        title: Row(
          children: <Widget>[
            Text(
              "Start ",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "Activity",
              style: TextStyle(
                  color: Color(0xff5868E0),
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
        titleSpacing: 85,
        leading: InkWell(
          onTap: () {
            setState(() {
              Navigator.pop(
                  context, MaterialPageRoute(builder: (context) => page()));
            });
          },
          child: Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Image.asset(
              "assets/images/Group 2359 - Copy.png",
              width: 40,
            ),
          ),
        ),
      ),
      body: pageBody(),
    );
  }
}

class pageBody extends StatefulWidget {
  @override
  _pageBodyState createState() => _pageBodyState();
}

class _pageBodyState extends State<pageBody> {
  int selectindex;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: Column(
        children: <Widget>[
          Container(
            color: boxColor,
            child: Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: Column(
                children: <Widget>[
                  GridView.count(
                    crossAxisCount: 2,
                    shrinkWrap: true,
                    childAspectRatio: 1,
                    crossAxisSpacing: 25,
                    mainAxisSpacing: 6.8,
                    children: List.generate(
                        item.length,
                        (index) => itemList(
                              index: index,
                            )),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Container(
              height: 84,
              width: MediaQuery.of(context).size.width,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children:
                      List.generate(navigation.length, (index) => nav(index))),
            ),
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

class itemList extends StatelessWidget {
  const itemList({
    Key key,
    this.index,
  }) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        height: 150,
        width: 150,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: boxColor,
            boxShadow: kboxShadow),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              item[index].icon,
              height: 30,
            ),
            SizedBox(
              height: 20,
            ),
            Text(item[index].title, style: TextStyle(color: textColor))
          ],
        ),
      ),
    );
  }
}
