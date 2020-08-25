import 'package:flutter/material.dart';

Color textColor = Color(0xff3E67D6);
Color boxColor = Color(0xFFEFF3FF);

final kboxShadow = [
  BoxShadow(color: Colors.white, offset: Offset(-10, -10), blurRadius: 10),
  BoxShadow(
      color: Colors.black.withOpacity(.15),
      offset: Offset(4, 4),
      blurRadius: 15)
];

final kIShadow = [
  BoxShadow(
      color: Colors.black.withOpacity(.15),
      //blurRadius: 1,
      spreadRadius: 2,
      offset: Offset(-1, 1)),
  BoxShadow(
      color: Colors.white.withOpacity(.7),
      spreadRadius: 2,
      offset: Offset(1, -1)),
  BoxShadow(
      color: Colors.black.withOpacity(.15),
      spreadRadius: 2,
      //  blurRadius: 1,
      offset: Offset(-1, -1)),
  BoxShadow(
      color: Colors.white.withOpacity(.7),
      spreadRadius: 2,
      offset: Offset(1, 1)),
];

class DailyActivity {
  final String day, date;
  DailyActivity({this.day, this.date});
}

class Navigation {
  final String icon, title;
  Navigation({this.icon, this.title});
}

List<Navigation> navigation = [
  Navigation(title: "Home", icon: "assets/images/Group 2361.png"),
  Navigation(
      title: "Activity", icon: "assets/images/Icon feather-activity.png"),
  Navigation(
      title: "Settings", icon: "assets/images/Icon feather-settings.png"),
  Navigation(title: "Profile", icon: "assets/images/Icon feather-user.png"),
];

List<DailyActivity> daily = [
  DailyActivity(
    day: "MON",
    date: "8",
  ),
  DailyActivity(
    day: "SUN",
    date: "7",
  ),
  DailyActivity(
    day: "SAT",
    date: "6",
  ),
  DailyActivity(
    day: "FRI",
    date: "5",
  ),
  DailyActivity(
    day: "THU",
    date: "4",
  ),
  DailyActivity(
    day: "WED",
    date: "3",
  ),
  DailyActivity(
    day: "TUE",
    date: "2",
  ),
  DailyActivity(
    day: "MON",
    date: "1",
  ),
];

class TodayActivity {
  final String icon, title, count;

  TodayActivity({this.icon, this.count, this.title});
}

List<TodayActivity> today = [
  TodayActivity(
    icon: "assets/images/trail-running-shoe (1).png",
    title: "Steps",
    count: "1,254",
  ),
  TodayActivity(
    icon: "assets/images/weight.png",
    title: "Calories",
    count: "826",
  ),
  TodayActivity(
    icon: "assets/images/cardiogram (1).png",
    title: "BPM",
    count: "88.0",
  ),
];

class Activity {
  final String icon, title;
  Activity({this.icon, this.title});
}

List<Activity> item = [
  Activity(icon: "assets/images/trail-running-shoe (1).png", title: "Walking"),
  Activity(icon: "assets/images/treadmill (1).png", title: "Tradmill"),
  Activity(icon: "assets/images/running (2).png", title: "Running"),
  Activity(icon: "assets/images/bike (2).png", title: "Cycling"),
  Activity(icon: "assets/images/gym.png", title: "Gym"),
  Activity(icon: "assets/images/Path 1711.png", title: "Yoge"),
];
