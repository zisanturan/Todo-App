import 'package:flutter/material.dart';
import 'package:todo_app/constants/tasktype.dart';

class AddNewTaskScreen extends StatefulWidget {
  const AddNewTaskScreen({Key? key}) : super(key: key);

  @override
  State<AddNewTaskScreen> createState() => _AddNewTaskScreenState();
}

class _AddNewTaskScreenState extends State<AddNewTaskScreen> {
  TaskType taskType = TaskType.note; // TaskType'ı burada tanımlayın

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple,
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    'lib/assets/images/heeader2.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          title: const Text("Add New Task"),
          centerTitle: true,
          leading: IconButton(
            icon: const Icon(
              Icons.close,
              size: 20,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 25),
              child: Text(
                'Task Title',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Bir görev girin...',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text("Category"),
                  GestureDetector(
                    onTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          duration: Duration(milliseconds: 300),
                          content: Text("Category selected"),
                        ),
                      );
                      setState(() {
                        taskType = TaskType.note;
                      });
                    },
                    child: Image.asset("lib/assets/images/category_1.png"),
                  ),
                  GestureDetector(
                    onTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          duration: Duration(milliseconds: 300),
                          content: Text("Category selected"),
                        ),
                      );
                      setState(() {
                        taskType = TaskType.calendar;
                      });
                    },
                    child: Image.asset("lib/assets/images/category_2.png"),
                  ),
                  GestureDetector(
                    onTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          duration: Duration(milliseconds: 300),
                          content: Text("Category selected"),
                        ),
                      );
                      setState(() {
                        taskType = TaskType.contest;
                      });
                    },
                    child: Image.asset("lib/assets/images/category_3.png"),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
