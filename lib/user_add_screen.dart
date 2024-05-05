import 'package:flutter/material.dart';

class AddScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Location"),

      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Title',
                  hintText: 'Enter the title',
                ),
              ),
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Description',
                  hintText: 'What makes it special',
                ),
                maxLines: 3,
              ),SizedBox(height: 20),
              ElevatedButton.icon(
                onPressed: () {
                  // Function to handle image upload
                },
                icon: Icon(Icons.upload_file),
                label: Center(child: Text('Upload Image')),
              ),

              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Location',
                  hintText: 'Specify the location',
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [

                  ElevatedButton(
                    onPressed: () {
                      // Functionality to add the content
                    },
                    child: Text('Submit'),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}