import 'package:digicue_hrm/app/modules/work/controllers/work_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WorkView extends GetView<WorkController> {
  const WorkView({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey.shade900,
        title: Text(
          'WorkView',
          style: TextStyle(color: Colors.grey.shade500),
        ),
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.white70),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Project Name:',
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 17),
              ),
              SizedBox(height: 5),
              Text(
                'name of the work',
                style: TextStyle(color: Colors.grey[500], fontSize: 15),
              ),
              SizedBox(height: 20),
              Text(
                'Subject:',
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 17),
              ),
              SizedBox(height: 5),
              Text(
                'Give some details of the project with small note',
                style: TextStyle(color: Colors.grey[500], fontSize: 16),
              ),
              SizedBox(height: 20),
              Text(
                'Work Date:', // Display the label for work date
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 17),
              ),
              SizedBox(height: 5),
              Text(
                '2024-05-08', // Actual date received from the backend
                style: TextStyle(color: Colors.grey[500], fontSize: 16),
              ),
              SizedBox(height: 20),
              Text(
                'Work Description:',
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 17),
              ),
              SizedBox(height: 5),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.grey[900],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  maxLines: null,
                  keyboardType: TextInputType.multiline,
                  style: TextStyle(color: Colors.grey[500], fontSize: 16),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Enter work description...',
                    hintStyle: TextStyle(color: Colors.grey[500]),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      'Work Status:',
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                  ),
                  DropdownButton<String>(
                    value: 'In Progress',
                    style: TextStyle(color: Colors.white), // Change text color to white
                    dropdownColor: Colors.grey.shade900, // Set dropdown background color
                    onChanged: (String? newValue) {},
                    items: <String>['Pending', 'In Progress', 'Completed'].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      'Current Status:',
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                  ),
                   Text(
                    'On Track', 
                    style: TextStyle(color: Colors.grey[500], fontSize: 16), 
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
