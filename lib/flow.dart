import 'package:flutter/material.dart';

import 'data.dart';

typedef ImageFrameBuilder = Widget Function(
  BuildContext context,
  Widget child,
  int frame,
  bool wasSynchronouslyLoaded,
);

class FlowPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    List<FlowItem> allPhotos = veriKaynaginiHazirla();

    return ListView(
      children: [
        Container(
          child: Column(
            children: [
              Card(
                elevation: 5,
                margin: EdgeInsets.all(8),
                child: Stack(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 8, left: 5, bottom: 8, right: 0),
                          child: CircleAvatar(
                            child: Icon(Icons.account_circle_rounded),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 5,
                            top: 15,
                          ),
                          child: Text(
                            "umit",
                            style: TextStyle(
                              fontFamily: 'Ubuntu',
                              fontSize: 16,
                              color: Colors.black54,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 190,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 70, top: 15),
                          child: Icon(
                            Icons.add_rounded,
                            size: 30,
                            color: Colors.amber,
                          ),
                        ),
                      ],
                    ),
                    Card(
                      elevation: 5,
                      margin:
                          EdgeInsets.only(left: 5, right: 5, bottom: 5, top: 56),
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/images/anne.jpg',
                            fit: BoxFit.fill,
                            frameBuilder: (BuildContext context, Widget child,
                                int frame, bool wasSynchronouslyLoaded) {
                              return Column(
                                children: [
                                  Image.asset('assets/images/anne.jpg'),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.star_half_rounded,
                                        color: Colors.amber,
                                      ),
                                      SizedBox(
                                        width: 318,
                                      ),
                                      Icon(
                                        Icons.photo_filter_rounded,
                                        color: Colors.amber,
                                      ),
                                    ],
                                  ),
                                ],
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          child: Column(
            children: [
              Card(
                elevation: 5,
                margin: EdgeInsets.all(8),
                child: Stack(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 8, left: 5, bottom: 8, right: 0),
                          child: CircleAvatar(
                            child: Icon(Icons.account_circle_rounded),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 5,
                            top: 15,
                          ),
                          child: Text(
                            "umit",
                            style: TextStyle(
                              fontFamily: 'Ubuntu',
                              fontSize: 16,
                              color: Colors.black54,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 190,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 70, top: 15),
                          child: Icon(
                            Icons.add_rounded,
                            size: 30,
                            color: Colors.amber,
                          ),
                        ),
                      ],
                    ),
                    Card(
                      elevation: 5,
                      margin:
                      EdgeInsets.only(left: 5, right: 5, bottom: 5, top: 56),
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/images/anne.jpg',
                            fit: BoxFit.fill,
                            frameBuilder: (BuildContext context, Widget child,
                                int frame, bool wasSynchronouslyLoaded) {
                              return Column(
                                children: [
                                  Image.asset('assets/images/start.jpg'),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.star_half_rounded,
                                        color: Colors.amber,
                                      ),
                                      SizedBox(
                                        width: 318,
                                      ),
                                      Icon(
                                        Icons.photo_filter_rounded,
                                        color: Colors.amber,
                                      ),
                                    ],
                                  ),
                                ],
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          child: Column(
            children: [
              Card(
                elevation: 5,
                margin: EdgeInsets.all(8),
                child: Stack(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 8, left: 5, bottom: 8, right: 0),
                          child: CircleAvatar(
                            child: Icon(Icons.account_circle_rounded),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 5,
                            top: 15,
                          ),
                          child: Text(
                            "umit",
                            style: TextStyle(
                              fontFamily: 'Ubuntu',
                              fontSize: 16,
                              color: Colors.black54,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 190,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 70, top: 15),
                          child: Icon(
                            Icons.add_rounded,
                            size: 30,
                            color: Colors.amber,
                          ),
                        ),
                      ],
                    ),
                    Card(
                      elevation: 5,
                      margin:
                      EdgeInsets.only(left: 5, right: 5, bottom: 5, top: 56),
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/images/anne.jpg',
                            fit: BoxFit.fill,
                            frameBuilder: (BuildContext context, Widget child,
                                int frame, bool wasSynchronouslyLoaded) {
                              return Column(
                                children: [
                                  Image.asset('assets/images/anne.jpg'),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.star_half_rounded,
                                        color: Colors.amber,
                                      ),
                                      SizedBox(
                                        width: 318,
                                      ),
                                      Icon(
                                        Icons.photo_filter_rounded,
                                        color: Colors.amber,
                                      ),
                                    ],
                                  ),
                                ],
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  List<FlowItem> veriKaynaginiHazirla() {
    
  }
}
