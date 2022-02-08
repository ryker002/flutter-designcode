import 'package:designcode/constants.dart';
import 'package:flutter/material.dart';
import 'components/sidebar_row.dart';
import 'screens/sidebar_screen.dart';
import 'model/sidebar.dart';
import 'model/course.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return Container();
    return MaterialApp(
        debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(child: Container(child: RecentCourseCard(course: recentCourses[0],),))
      )
    );
  }
}

class RecentCourseCard extends StatelessWidget {
  const RecentCourseCard({Key? key, this.course}) : super(key: key);

  final Course? course;



  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
        width: 240,
        height: 240,
        decoration: BoxDecoration(
          gradient: course?.background,
          borderRadius: BorderRadius.circular(41.0)
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 32.0,
                left: 32.0,
                right: 32.0
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(course?.courseSubtitle, style: kCardSubtitleStyle,),
                  SizedBox(height: 6.0,),
                  Text(course?.courseTitle, style: kCardTitleStyle,),
                ],
              ),
            ),
            Expanded(child: Image.asset('asset/illustrations/${course?.illustration}', fit: BoxFit.cover,))
          ],
        ),
      ),
      ],
    );
  }
}
