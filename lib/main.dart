import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:app/widgets/todo_task.dart';

void main()
{
  runApp(const MyApp());
}

class MyApp extends StatelessWidget
{
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context)
  {
    /* Status Bar colour */
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Color(0xFFF4F5FA))
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Todo List",
      home: Scaffold(

        /* App Background Colour */
        backgroundColor: const Color(0xFFF4F5FA),

        /* AppBar */
        appBar: AppBar(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(
                  Icons.menu,
                  color: Colors.black,
                  size: 35,
                ),

                SizedBox(
                  width: 40,
                  height: 40,
                  child: Image.asset("assets/images/icon.png"),
                )
              ]
            ),
            backgroundColor: const Color(0xFFF4F5FA),
            elevation: 0,
        ),


        body: Column(
          children: [

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 5),
                  child: const Icon(
                    Icons.task_alt,
                    size: 32,
                  )
                ),

                const Text("Tasks",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold
                    )
                )
              ]
            ),

            Column(
              children: const [
                Todo(task: "Drink water"),
                Todo(task: "Go to gym"),
                Todo(task: "Buy groceries"),
                Todo(task: "Read book"),
                Todo(task: "Revise lessons"),
              ]
            )
          ]
        ),


        /* Adding new tasks */
        floatingActionButton: const FloatingActionButton(
          onPressed: null,
          child: Icon(Icons.add),
        ),
      )
    );
  }
}