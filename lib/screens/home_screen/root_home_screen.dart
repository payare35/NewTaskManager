import 'package:flutter/material.dart';

class RootHomeScreen extends StatefulWidget {
  const RootHomeScreen({Key? key}) : super(key: key);

  @override
  State<RootHomeScreen> createState() => _RootHomeScreenState();
}

class _RootHomeScreenState extends State<RootHomeScreen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {}, icon: Icon(Icons.add, color: Colors.white)),
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.exit_to_app, color: Colors.white))
        ],
        title: Text(
          "Hello Pankaj",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: Container(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                  leading: Container(
                    alignment: Alignment.center,
                    child: Icon(
                      Icons.assignment,
                      color: Colors.black,
                      size: screenWidth / 17.25,
                    ),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(0, 4),
                              blurRadius: 4,
                              color: Colors.black.withOpacity(0.25))
                        ],
                        borderRadius:
                            BorderRadius.circular(screenWidth / 10.35)),
                    height: screenWidth / 10.35,
                    width: screenWidth / 10.35,
                  ),
                  trailing: Container(
                    alignment: Alignment.center,
                    child: Icon(
                      Icons.delete,
                      color: Colors.black,
                      size: screenWidth / 17.25,
                    ),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(0, 4),
                              blurRadius: 4,
                              color: Colors.black.withOpacity(0.25))
                        ],
                        borderRadius:
                            BorderRadius.circular(screenWidth / 10.35)),
                    height: screenWidth / 10.35,
                    width: screenWidth / 10.35,
                  ),
                  title: Text("Task Name",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: screenWidth / 27.6)),
                  subtitle: Text(
                    "Have tea",
                    style: TextStyle(fontSize: screenWidth / 31.85),
                  )),
              ListTile(
                  leading: Container(
                    alignment: Alignment.center,
                    child: Icon(
                      Icons.calendar_today,
                      color: Colors.black,
                      size: screenWidth / 17.25,
                    ),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(0, 4),
                              blurRadius: 4,
                              color: Colors.black.withOpacity(0.25))
                        ],
                        borderRadius:
                            BorderRadius.circular(screenWidth / 10.35)),
                    height: screenWidth / 10.35,
                    width: screenWidth / 10.35,
                  ),
                  title: Text("Task Date",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: screenWidth / 27.6)),
                  subtitle: Text(
                    "12/02/2022",
                    style: TextStyle(fontSize: screenWidth / 31.85),
                  )),
              ListTile(
                  leading: Container(
                    alignment: Alignment.center,
                    child: Icon(
                      Icons.watch,
                      color: Colors.black,
                      size: screenWidth / 17.25,
                    ),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(0, 4),
                              blurRadius: 4,
                              color: Colors.black.withOpacity(0.25))
                        ],
                        borderRadius:
                            BorderRadius.circular(screenWidth / 10.35)),
                    height: screenWidth / 10.35,
                    width: screenWidth / 10.35,
                  ),
                  title: Text("Task Time",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: screenWidth / 27.6)),
                  subtitle: Text(
                    "19:22",
                    style: TextStyle(fontSize: screenWidth / 31.85),
                  ))
            ],
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  offset: Offset(0, 4),
                  blurRadius: 4,
                  color: Colors.black.withOpacity(0.25))
            ],
            borderRadius: BorderRadius.circular(screenWidth / 41.4),
          ),
          width: screenWidth,
          margin: EdgeInsets.only(
              left: screenWidth / 20.7,
              right: screenWidth / 20.7,
              bottom: screenWidth / 20.7,
              top: screenWidth / 20.7)),
    );
  }
}
