import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:our_e_college_app/components/annoucement/annoucement.dart';
import 'package:our_e_college_app/components/attendence/attendence.dart';
import 'package:our_e_college_app/components/e-card/e_card.dart';
import 'package:our_e_college_app/components/ebooks/ebooks.dart';
import 'package:our_e_college_app/components/exam/exam.dart';
import 'package:our_e_college_app/components/classroom/classroom.dart';
import 'package:our_e_college_app/homepage/Theme.dart' as AppTheme;
import 'package:our_e_college_app/components/timetable/timetable.dart';
import 'package:our_e_college_app/components/buysell/buySell.dart';

import 'homeCategoryItem.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Container(
          width: double.infinity,
          height: 250,
          decoration: BoxDecoration(
              // color: Colors.deepOrange,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(21),
                bottomRight: Radius.circular(21),
              ),
              image: DecorationImage(
                fit: BoxFit.fitWidth,
                image: AssetImage(
                  "assets/splash2.jpg",
                ),
              )),
          child: Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                    height: 100,
                    width: 100,
                    child: Image.asset('assets/iiitn.png')),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Indian Institute of Information Technology, Nagpur",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                      Text(
                        "An Institution of National Importance By An Act of Parliament",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: ListView(children: [
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: Padding(
                        padding: const EdgeInsets.only(right: 7),
                        child: HomeCategoryItem(
                          primaryColor: AppTheme.Colors.flatRed,
                          primaryIcon: Icons.perm_contact_calendar,
                          primaryTitle: "E-Card",
                          secondaryColor: AppTheme.Colors.flatOrange,
                          secondaryIcon: Icons.perm_contact_calendar,
                          secondaryIconHeight: 30,
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        Ecard()));
                          },
                        )),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 7),
                      child: HomeCategoryItem(
                        primaryColor: AppTheme.Colors.flatPurple,
                        primaryIcon: Icons.av_timer,
                        primaryTitle: "TimeTable",
                        secondaryColor: AppTheme.Colors.flatDeepPurple,
                        secondaryIcon: Icons.av_timer,
                        secondaryIconHeight: 40,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      TimeTable()));
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16,left: 16, right: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: Padding(
                        padding: const EdgeInsets.only(right: 7),
                        child: HomeCategoryItem(
                          primaryColor: AppTheme.Colors.flatRed,
                          primaryIcon: Icons.announcement,
                          primaryTitle: "Announcement",
                          secondaryColor: AppTheme.Colors.flatOrange,
                          secondaryIcon: Icons.announcement,
                          secondaryIconHeight: 30,
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) => Annoucement()));
                          },
                        )),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 7),
                      child: HomeCategoryItem(
                        primaryColor: AppTheme.Colors.flatRed,
                        primaryIcon: Icons.event_available,
                        primaryTitle: "Attendence",
                        secondaryColor: AppTheme.Colors.flatOrange,
                        secondaryIcon: Icons.event_available,
                        secondaryIconHeight: 30,
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  Attendence()
                          ));
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
                child: HomeCategoryItem(
                  primaryColor: AppTheme.Colors.flatRed,
                  primaryIcon: FontAwesomeIcons.graduationCap,
                  primaryTitle: "ClassRoom",
                  secondaryColor: AppTheme.Colors.flatOrange,
                  secondaryIcon: FontAwesomeIcons.graduationCap,
                  secondaryIconHeight: 30,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => GoogleClassroomClone()));
                  },
                )),
            Padding(
                padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      child: Padding(
                          padding: const EdgeInsets.only(right: 7),
                          child: HomeCategoryItem(
                            primaryColor: AppTheme.Colors.flatRed,
                            primaryIcon: Icons.assistant_photo,
                            primaryTitle: "Exams",
                            secondaryColor: AppTheme.Colors.flatOrange,
                            secondaryIcon: Icons.assistant_photo,
                            secondaryIconHeight: 30,
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          Exam()));
                            },
                          )),
                    ),
                    Expanded(
                        child: Padding(
                            padding: const EdgeInsets.only(left: 7),
                            child: HomeCategoryItem(
                              primaryColor: AppTheme.Colors.flatPurple,
                              primaryIcon: FontAwesomeIcons.book,
                              primaryTitle: "E-Book",
                              secondaryColor: AppTheme.Colors.flatDeepPurple,
                              secondaryIcon: FontAwesomeIcons.book,
                              secondaryIconHeight: 40,
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (BuildContext context) =>
                                            Ebooks()));
                              },
                            ))),
                  ],
                )),
            Padding(
                padding: const EdgeInsets.all(16.0),
                child: HomeCategoryItem(
                  primaryColor: AppTheme.Colors.flatRed,
                  primaryIcon: Icons.receipt,
                  primaryTitle: "Offers",
                  secondaryColor: AppTheme.Colors.flatOrange,
                  secondaryIcon: Icons.receipt,
                  secondaryIconHeight: 30,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => BuySell()));
                  },
                )),
          ]),
        ),
      ],
    );
  }
}
