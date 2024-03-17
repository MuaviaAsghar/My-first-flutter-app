import 'package:flutter/material.dart';
import '../constants/colors.dart';
import '../widgets/todoItem.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: tdBGColor,
      appBar: AppBar(
        backgroundColor: tdBGColor,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Icon(
              Icons.menu,
              color: tdBlack,
              size: 35,
            ),
            Container(
              height: 40,
              width: 40,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(90.0),
                child: Image.asset('assets/images/GTA.jpeg'),
              ),
            )
          ],
        ),
      ),
      body: 
        child: Column(
          children: [
            searchBox(),
            Expanded(
              child: ListView(
                children: [
                  Container(
                      margin: EdgeInsets.only(top: 30, bottom: 40),
                      child: Text("ToDo APP", style: TextStyle(fontSize: 40, fontWeight: FontWeight.w600)),
                     ),
                     ToDoItem()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget searchBox() {
  return Container(
    padding: EdgeInsetsDirectional.symmetric(horizontal: 25.0),
    child: Column(
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 80.0),
        ),
        Container(
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
          child: const TextField(
            decoration: InputDecoration(
                contentPadding: EdgeInsets.all(0),
                prefixIcon: Icon(
                  Icons.search,
                  color: tdBlack,
                  size: 20,
                ),
                prefixIconConstraints: BoxConstraints(
                  maxHeight: 30,
                  minWidth: 30,
                ),
                border: InputBorder.none,
                hintText: "Search",
                hintStyle: TextStyle(color: tdGrey)),
          ),
        ),
      ],
    ),
  );
}
