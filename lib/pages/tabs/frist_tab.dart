// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_signin_app/model/category.dart';
import 'package:google_signin_app/utils/utils.dart';

class FistTab extends StatelessWidget {
  const FistTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Category> categories = Utils.getMockedCategories();
    return Expanded(
        child: ListView.builder(
            itemCount: categories.length,
            itemBuilder: (BuildContext ctx, int index) {
              return Container(
                padding: const EdgeInsets.all(10),
                child: Column(children: [
                  GestureDetector(
                    onTap: () {
                      print('Tapped');
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 200,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          'assets/images/' + categories[index].image + '.jpg',
                          fit: BoxFit.fill,
                          height: 200,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: RichText(
                      text: TextSpan(
                        style: DefaultTextStyle.of(context).style,
                        children: [
                          TextSpan(
                            text: categories[index].name,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          TextSpan(
                            text: 'Location:' + categories[index].location,
                            style: TextStyle(
                                color: Color.fromARGB(255, 255, 17, 0)),
                          ),
                          WidgetSpan(
                            child: Icon(Icons.accessible_forward, size: 18),
                          ),
                          TextSpan(
                            text: categories[index].title,
                          ),
                          WidgetSpan(
                            child: Icon(Icons.delivery_dining, size: 18),
                          ),
                          TextSpan(
                            text: categories[index].description,
                          ),
                        ],
                      ),
                    ),
                  ),
                ]),
              );
            }));
  }
}
