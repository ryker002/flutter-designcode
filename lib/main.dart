import 'package:designcode/constants.dart';
import 'package:flutter/material.dart';
import 'components/cards/recent_course_card.dart';
import 'model/course.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return Container();
    return MaterialApp(
        debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          color: kBackgroundColor,
          child: SafeArea(
            child: Column(
              children: [
                HomeScreenNavBar(),
                RecentCourseCard(course: recentCourses[1],),
              ],
          ),
          ),
        )
      )
    );
  }
}

class HomeScreenNavBar extends StatelessWidget {
  const HomeScreenNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SidebarButton(),
          SearchFieldWidget(),
          Icon(Icons.notifications, color: kPrimaryLabelColor,),
          SizedBox(width: 16.0,),
          CircleAvatar(radius: 18.0, backgroundImage: AssetImage('asset/images/profile.jpg'),)
        ],
      ),
    );
  }
}

class SearchFieldWidget extends StatelessWidget {
  const SearchFieldWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(child: Padding(
      padding: const EdgeInsets.only(left: 12.0, right: 33.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(14.0),
          boxShadow: [
            BoxShadow(color: kShadowColor, offset: Offset(0, 12), blurRadius: 16.0)
          ]
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: TextField(
            cursorColor: kPrimaryLabelColor,
            decoration: InputDecoration(
              icon: Icon(Icons.search, color: kPrimaryLabelColor, size: 20.0,),
              border: InputBorder.none,
              hintText: "Search for Courses",
              hintStyle: kSearchPlaceholderStyle
            ),
            style: kSearchTextStyle,
            onChanged: (newText) {
              print(newText);
            },
          ),
        ),
      ),
    ));
  }
}


class SidebarButton extends StatelessWidget {
  const SidebarButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: () {
        print("Sidebar Button Pressed");
      },
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      constraints: BoxConstraints(
        maxWidth: 40.0,
        maxHeight: 40.0
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(14.0),
          boxShadow: [
            BoxShadow(color: kShadowColor, offset: Offset(0, 12), blurRadius: 16.0)
          ]
        ),
        child: Image.asset('asset/icons/icon-sidebar.png', color: kPrimaryLabelColor,),
        padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 14.0),
      ),
    );
  }
}
