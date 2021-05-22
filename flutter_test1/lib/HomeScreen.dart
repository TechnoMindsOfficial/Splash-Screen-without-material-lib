import 'package:flutter/material.dart';
import 'package:fluttertest1/configuration.dart';

class Homescreen extends StatefulWidget {
  @override
  _HomescreenState createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  double xOffset = 0;
  double yOffset = 0;
  double scalefactor = 1;
  bool a=false;


  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
        transform: Matrix4.translationValues(xOffset, yOffset, 0)
          ..scale(scalefactor),
        duration: Duration(milliseconds: 250),

        color: lightgrey,

        child: Column(
          children: [
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.all(15),
                  decoration: BoxDecoration(

                  ),
                  child: Column(
                    children: [

                          a?IconButton(
                              icon: Icon(
                                Icons.arrow_back_ios,
                              ),
                              onPressed: () {
                                a=!a;
                                if(a==false){
                                  setState(() {

                                    xOffset=0;
                                    yOffset=0;
                                    scalefactor=1;


                                  });
                                }else{

                                  setState(() {
                                    xOffset=300;
                                    yOffset=100;
                                    scalefactor=0.75;

                                  });
                                }

                              }):IconButton(
                          icon: Icon(
                            Icons.menu,
                          ),
                          onPressed: () {
                            a=!a;
                            if(a==false){
                              setState(() {

                                xOffset=0;
                                yOffset=0;
                                scalefactor=1;

                              });
                            }else{

                              setState(() {

                                xOffset=300;
                                yOffset=100;
                                scalefactor=0.75;

                              });
                            }

                          })


                    ],
                  ),
                ),

                Column(
                  children: [
                    Text(
                      "Location",
                      style: TextStyle(fontSize: 13),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.add_location,
                          color: primarycolor,
                        ),
                        Row(
                          children: [
                            Text(
                              "Patiala,",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            Text(
                              " Punjab",
                              style: TextStyle(
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),

                Container(
                  margin: EdgeInsets.all(15),
                  child: Column(
                    children: [
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                            'data:image/jpeg;base64,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'),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 5),
              width: double.infinity,

              decoration: BoxDecoration(
                  color: lightgrey, borderRadius: BorderRadius.circular(30)),


                   child: Container(
                     padding: EdgeInsets.symmetric(horizontal: 20,vertical: 15),
                     margin: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                     decoration: BoxDecoration(
                       color: Colors.white,
                       borderRadius: BorderRadius.circular(15),
                           
                     ),

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.search),
                          Text('Search here'),
                          Icon(Icons.settings)
                        ],
                      ),
                    ),


            ),

            Container(
              height: 120,

              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                itemBuilder: (context,index){
                  return Container(
                    child: Column(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.white,

                            borderRadius: BorderRadius.circular(10)
                            
                          ),
                          margin: EdgeInsets.only(left: 20,right: 10),
                          child: Image.asset(categories[index]['icpath']),
                        ),
                        Text(categories[index]['name'])
                      ],
                    ),
                  );
              },
              )
            )

          ],
        )

    );
  }
}
