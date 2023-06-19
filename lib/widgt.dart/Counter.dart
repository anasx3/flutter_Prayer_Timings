// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';

class Todecard extends StatelessWidget {
  final String vartitle;
  final bool doneORnot;
  final Function changeStatus;
  final int index;
  final Function delete;

  const Todecard(
      {Key? key,
      required this.vartitle,
      required this.changeStatus,
      required this.index,
      required this.delete,
      required this.doneORnot})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        changeStatus(index);
      },
      child: FractionallySizedBox(
        widthFactor: 0.9,
        child: Container(
          margin: EdgeInsets.only(top: 20),
          padding: EdgeInsets.all(15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                vartitle,
                style: TextStyle(
                  color: doneORnot
                      ? Color.fromARGB(255, 19, 19, 19)
                      : Colors.white,
                  fontSize: 22,
                  decoration: doneORnot
                      ? TextDecoration.lineThrough
                      : TextDecoration.none,
                ),
              ),
              Row(
                children: [
                  Icon(
                    doneORnot ? Icons.check : Icons.close,
                    size: 27,
                    color: doneORnot ? Colors.green[400] : Colors.red,
                  ),
                  SizedBox(
                    width: 17,
                  ),
                  IconButton(
                    onPressed: () {
                      delete(index);
                    },
                    icon: Icon(Icons.delete),
                    iconSize: 27,
                    color: Color.fromARGB(255, 201, 112, 105),
                  )
                ],
              )
            ],
          ),
          decoration: BoxDecoration(
              color: Color.fromRGBO(209, 224, 224, 0.2),
              borderRadius: BorderRadius.circular(11)),
        ),
      ),
    );
  }
}
