import 'package:flutter/material.dart';

class Todo extends StatefulWidget
{
  final String task;

  /* Constructor */
  const Todo({
    super.key,
    required this.task,
  });

  @override
  State<Todo> createState() => _TodoState();
}

class _TodoState extends State<Todo>
{
  /* Variable to define checkbox value */
  bool? isChecked = false;

  /* Placing the original text / lined-through text on the screen */
  Widget placeText()
  {
    if(isChecked == false)
    {
      return Text(widget.task,
          style: const TextStyle(
            fontSize: 20,
          )
      );
    }
    else
    {
      return Text(widget.task,
          style: const TextStyle(
            fontSize: 20,
            fontStyle: FontStyle.italic,
            decoration: TextDecoration.lineThrough
          ),
      );
    }
  }

  @override
  Widget build(BuildContext context)
  {
    return Container(
        width: MediaQuery.of(context).size.width,
        height: 70,
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
                color: Colors.grey,
                width: 1
            ),
            borderRadius: BorderRadius.circular(15),
          boxShadow: const [
            BoxShadow(
                color: Colors.grey,
                offset: Offset(2, 2),
                blurRadius: 5,
                spreadRadius: 1
            )
          ]
        ),

        /* Parent task container */
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,

            children: [
              /* Child container */
              Row(
                  children: [
                    /* Checkbox */
                    Checkbox(
                      value: isChecked,
                      onChanged: (isChecked)
                      {
                        setState(() {
                          this.isChecked = isChecked;
                        });
                      },
                      fillColor: const MaterialStatePropertyAll(Colors.blueAccent),
                    ),

                    /* Placing the text on the screen */
                    placeText()
                  ]
              ),

              /* Delete Icon */
              const Icon(
                Icons.delete,
                size: 28,
                color: Colors.red,
              )
            ]
        )
    );
  }
}