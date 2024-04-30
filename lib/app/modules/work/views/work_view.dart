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
                'Client Name:',
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 17),
              ),
              SizedBox(height: 5),
              Text(
                'John Doe',
                style: TextStyle(color: Colors.grey[500], fontSize: 15),
              ),
              SizedBox(height: 20),
              Text(
                'Contact Number:',
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 17),
              ),
              SizedBox(height: 5),
              Text(
                '9098997086',
                style: TextStyle(color: Colors.grey[500], fontSize: 16),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Start Date:',
                          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 17),
                        ),
                        SizedBox(height: 5),
                        // You can add a Text widget or a TextFormField widget here to display the selected start date
                        // For example:
                        // Text('Selected Date: ${controller.selectedStartDate}')
                      ],
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(2020),
                        lastDate: DateTime(2100),
                        builder: (BuildContext context, Widget? child) {
                          return Theme(
                            data: ThemeData.dark(),
                            child: child!,
                          );
                        },
                      );
                    },
                    icon: Icon(Icons.calendar_today, color: Colors.white),
                  ),
                ],
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
                  DropdownButton<String>(
                    value: 'On Track',
                    style: TextStyle(color: Colors.white), // Change text color to white
                    dropdownColor: Colors.grey.shade900, // Set dropdown background color
                    onChanged: (String? newValue) {},
                    items: <String>['On Track', 'Delayed', 'Completed on Time'].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
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
