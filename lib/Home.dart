import 'package:flutter/material.dart';

class Home extends StatelessWidget{
 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
         centerTitle: true,
        title: const Text("Home"),
        leading:  IconButton(
    icon: Icon(Icons.menu),
    onPressed: () {
      print("Menu Pressed");
    },
  ),
  actions: [
    IconButton(
      icon: Icon(Icons.notifications),
      onPressed: () {
        print("Notification Pressed");
      },
    ),
  ],
      ),
      body: Center(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Hello,Rahul!",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                SizedBox(width: 100),

                Image.network(
                  'https://cdn-icons-png.flaticon.com/128/3135/3135789.png',
                  height: 80,
                  width: 80,
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              "Quick Actions",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Card(
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Icon(Icons.menu_book, color: Colors.purple),
                        Text("Courses"),
                      ],
                    ),
                  ),
                ),

                Card(
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Icon(Icons.bar_chart, color: Colors.green),
                        Text("Progress"),
                      ],
                    ),
                  ),
                ),

                Card(
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Icon(Icons.calendar_month, color: Colors.orange),
                        Text("Schedule"),
                      ],
                    ),
                  ),
                ),
              ],
            ),
             Text(
              "Continue Learning",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),

            SizedBox(height: 15),

            Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 5)],
              ),
              child: Row(
                children: [
                  Icon(Icons.book, color: Colors.deepPurple, size: 40),

                  SizedBox(width: 15),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Flutter Basics",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),

                      SizedBox(height: 5),

                      Text(
                        "60% Completed",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Text(
              "Upcoming Classes",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),

            SizedBox(height: 15),

            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.orange.shade100,
                child: Icon(Icons.calendar_month, color: Colors.orange),
              ),
              title: Text("Dart Programming"),
              subtitle: Text("10:00 AM"),
              trailing: Icon(Icons.arrow_forward_ios),
            ), 
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
         backgroundColor: Colors.white,
  unselectedItemColor: Colors.grey,
  type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home,),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu_book),
            label: 'Courses',
          ),
           BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart),
            label: 'Progress',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}