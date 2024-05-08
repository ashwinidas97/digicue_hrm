import 'package:digicue_hrm/app/modules/work/views/work_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_slidable/flutter_slidable.dart'; 
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight), // Adjust the height as needed
        child: AppBar(
          backgroundColor: Colors.grey.shade900,
          title: Text(
            'Digicue Software Solutions',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
          ),
          centerTitle: true,
          iconTheme: IconThemeData(color: Colors.grey),
        ),
      ),
      body: Container(
        color: Colors.black, 
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Devika',
                          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        Text(
                          'Web Developer',
                          style: TextStyle(color: Colors.grey[500], fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: CircleAvatar(
                      backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ-ZS5_DNtn43qaYlTFN5wt_F7y_CdNAC4tDQ&s'), // Replace 'https://example.com/path_to_your_image' with your image URL
                      radius: 40,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Container(
                height: 38,
                child: TextField(
                  onChanged: (value) => controller.onSearch(value),
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey[850],
                      contentPadding: EdgeInsets.all(0),
                      prefixIcon: Icon(Icons.search, color: Colors.grey.shade500,),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide: BorderSide.none
                      ),
                      hintStyle: TextStyle(
                          fontSize: 14,
                          color: Colors.grey.shade500
                      ),
                      hintText: "Search project"
                  ),
                ),
              ),
            ),
             SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
              Text(
                'All Projects', // Heading
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Divider( // Adding a Divider
              color: Colors.grey,
              thickness: 1,
             ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 7, //  User for demonstration
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: GestureDetector( // Wrap with GestureDetector
                      onTap: () {
                        Get.to(() => WorkView()); // Navigate to WorkView
                      },
                      child: Slidable(
                        actionPane: SlidableDrawerActionPane(),
                        actionExtentRatio: 0.25,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Project Name', // Project name
                                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  'Subject ghhhbj jvhvjb jhbhj jhfyu', // Small Description for the project
                                  style: TextStyle(color: Colors.grey[500], fontSize: 14),
                                ),
                              ],
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Text(
                                'View Work',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                        secondaryActions: <Widget>[
                          IconSlideAction(
                          caption: 'Start',
                          color: Colors.black,
                          iconWidget: Icon(
                          Icons.start,
                          color: Colors.white,
                          ),
                          onTap: () {
                            // Add your action here
                           },
                          ),
                          IconSlideAction(
                            caption: 'In Progress',
                            color: Colors.black,
                            iconWidget: Icon(
                            Icons.hourglass_full,
                            color: Colors.white,
                            ),
                            onTap: () {
                              // Add your action here
                            }, 
                          ),
                          IconSlideAction(
                           caption: 'Completed',
                           color: Colors.black,
                           iconWidget: Icon(
                           Icons.check_circle,
                           color: Colors.white,
                           ),
                           onTap: () {
                              // Add your action here
                            }, 
                          ),
                          IconSlideAction(
                            caption: 'Pending',
                           color: Colors.black,
                           iconWidget: Icon(
                           Icons.pending, 
                           color: Colors.white,
                           ),
                           onTap: () {
                              // Add your action here
                            },
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
