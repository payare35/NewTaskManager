import 'package:flutter/material.dart';

class ViewIndividualTask extends StatefulWidget {
  const ViewIndividualTask({Key? key}) : super(key: key);

  @override
  State<ViewIndividualTask> createState() => _ViewIndividualTaskState();
}

class _ViewIndividualTaskState extends State<ViewIndividualTask> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
        actions: [
          IconButton(
              onPressed: () {}, icon: Icon(Icons.delete, color: Colors.white)),
        ],
        title: Text(
          "Task Details",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // SizedBox(
            //   height: screenWidth / 16.56,
            //   width: screenWidth,
            // ),
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
                      borderRadius: BorderRadius.circular(screenWidth / 10.35)),
                  height: screenWidth / 10.35,
                  width: screenWidth / 10.35,
                ),
                trailing: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.edit,
                      color: Colors.black,
                      size: screenWidth / 17.25,
                    )),
                title: Text("Task Name",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: screenWidth / 27.6)),
                subtitle: Text(
                  "Have tea",
                  style: TextStyle(fontSize: screenWidth / 31.85),
                )),
            // SizedBox(
            //   height: screenWidth / 18.81,
            // ),
            Divider(
              height: 0,
              color: Color(0xFFC4C4C4),
              indent: screenWidth / 21.79,
              endIndent: screenWidth / 21.79,
            ),
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
                      borderRadius: BorderRadius.circular(screenWidth / 10.35)),
                  height: screenWidth / 10.35,
                  width: screenWidth / 10.35,
                ),
                trailing: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.edit,
                      color: Colors.black,
                      size: screenWidth / 17.25,
                    )),
                title: Text("Task Date",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: screenWidth / 27.6)),
                subtitle: Text(
                  "12/12/2022",
                  style: TextStyle(fontSize: screenWidth / 31.85),
                )),
            // SizedBox(
            //   height: screenWidth / 18.81,
            // ),
            Divider(
              height: 0,
              color: Color(0xFFC4C4C4),
              indent: screenWidth / 21.79,
              endIndent: screenWidth / 21.79,
            ),
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
                      borderRadius: BorderRadius.circular(screenWidth / 10.35)),
                  height: screenWidth / 10.35,
                  width: screenWidth / 10.35,
                ),
                trailing: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.edit,
                      color: Colors.black,
                      size: screenWidth / 17.25,
                    )),
                title: Text("Task Time",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: screenWidth / 27.6)),
                subtitle: Text(
                  "07:44 pm",
                  style: TextStyle(fontSize: screenWidth / 31.85),
                )),
            // SizedBox(
            //   height: screenWidth / 18.81,
            // ),
            Divider(
              height: 0,
              color: Color(0xFFC4C4C4),
              indent: screenWidth / 21.79,
              endIndent: screenWidth / 21.79,
            )
          ],
        ),
      ),
    );
  }
}
