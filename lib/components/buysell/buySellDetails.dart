import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BuySellDetails extends StatefulWidget {
  final itemImageUri;
  final itemName;
  final itemPrice;
  final sellerName;
  final sellerRoom;
  final sellerContact;

  BuySellDetails({this.itemImageUri, this.itemName, this.itemPrice,this.sellerName,this.sellerContact,this.sellerRoom});
  @override
  _BuySellDetailsState createState() => _BuySellDetailsState();
}

class _BuySellDetailsState extends State<BuySellDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.deepPurple,
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },

            icon: Icon(Icons.arrow_back),
            color: Colors.white,
          ),

          backgroundColor: Colors.transparent,
          elevation: 0.0,
          title: Text(widget.itemName,
              style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 18.0,
                  color: Colors.white)),
          centerTitle: true,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.more_horiz),
              onPressed: () {},
              color: Colors.white,
            )
          ],
        ),
        body: ListView(children: [
          Stack(children: [
            Container(
                height: MediaQuery.of(context).size.height - 82.0,
                width: MediaQuery.of(context).size.width,
                color: Colors.transparent),
            Positioned(
                top: 75.0,
                child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50.0),
                          topRight: Radius.circular(50.0),
                        ),
                        color: Colors.white),
                    height: MediaQuery.of(context).size.height - 100.0,
                    width: MediaQuery.of(context).size.width)),
            // SizedBox(height: 40),
            Positioned(
                top: 30.0,
                left: (MediaQuery.of(context).size.width / 2) - 100.0,
                child: Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(widget.itemImageUri),
                            fit: BoxFit.cover)),
                    height: 200.0,
                    width: 200.0)),
            Positioned(
                top: 300.0,
                left: 25.0,
                right: 25.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(widget.itemName,
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 22.0,
                            fontWeight: FontWeight.bold)),
                    SizedBox(height: 20.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text('Rs. ' + widget.itemPrice,
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 20.0,
                                color: Colors.grey)),
                      ],
                    ),
                    SizedBox(height: 40.0),
                    _buildContactDetails(widget.sellerName, widget.sellerRoom, widget.sellerContact),
                    // Container(
                    //   child: _buildContactDetails('Ashish Sonam', 'C-21', '8210864839'),
                    // ),
                  ],
                ))
          ])
        ]));
  }

  Widget _buildContactDetails(String name, String roomNo, String contactNo) {
    return Container(
      // height: 150,
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(width: 1, color: Colors.grey[300]),
          borderRadius: BorderRadius.circular(20),
          // color: Colors.purple[300],
        ),
        // margin: EdgeInsets.only(right: 5, left: 5),
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Text(
              "Contact Details",
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(width: 40.0, color: Colors.grey, height: 1.0),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Name: ',
                          style: TextStyle(
                            // fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.grey,
                          ),
                        ),
                        Text(
                          name,
                          style: TextStyle(
                            // fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Text(
                          'Room No.: ',
                          style: TextStyle(
                            // fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.grey,
                          ),
                        ),
                        Text(
                          roomNo,
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),

                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Text(
                          'Contact No.: ',
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.grey
                          ),
                        ),
                        Text(
                          contactNo,
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),

                      ],
                    )
                  ],
                ),
                OutlinedButton(
                  onPressed: () async {
                    String url = 'tel:${widget.sellerContact}';
                    if (await canLaunch(url)) {
                    await launch(url);
                    } else {
                    throw 'Could not launch $url';
                    }
                  },

                  child: Text(
                    "CALL",
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                )
              ],
            ),
          ],
        )
    );
    // return InkWell(
    //   onTap: () {
    //     // selectCard(cardTitle);
    //   },
    //   child: AnimatedContainer(
    //     duration: Duration(milliseconds: 500),
    //     curve: Curves.easeIn,
    //     decoration: BoxDecoration(
    //       borderRadius: BorderRadius.circular(10.0),
    //       color: Colors.deepPurple,
    //       border: Border.all(
    //         color: Colors.transparent,
    //         style: BorderStyle.solid,
    //       width: 0.75
    //       ),

    //     ),
    //     height: 100.0,
    //     width: 100.0,
    //     child: Column(
    //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //       crossAxisAlignment: CrossAxisAlignment.start,
    //       children: [
    //         Padding(
    //           padding: const EdgeInsets.only(top: 8.0, left: 15.0),
    //           child: Text(cardTitle,
    //               style: TextStyle(
    //                 fontFamily: 'Montserrat',
    //                 fontSize: 12.0,
    //                 color: Colors.white,
    //               )),
    //         ),
    //         Padding(
    //           padding: const EdgeInsets.only(left: 15.0, bottom: 8.0),
    //           child: Column(
    //             crossAxisAlignment: CrossAxisAlignment.start,
    //             children: <Widget>[
    //               Text(info,
    //                   style: TextStyle(
    //                       fontFamily: 'Montserrat',
    //                       fontSize: 14.0,
    //                       color: Colors.white,
    //                       fontWeight: FontWeight.bold)),
    //               Text(unit,
    //                   style: TextStyle(
    //                     fontFamily: 'Montserrat',
    //                     fontSize: 12.0,
    //                     color: Colors.white
    //                   ))
    //             ],
    //           ),
    //         )
    //       ]
    //     )
    //   )
    // );
  }
}
