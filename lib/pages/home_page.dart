import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wallstate/common_widget/widget.dart';
import 'package:wallstate/data/data.dart';
import 'package:wallstate/model/categories_model.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<CategoriesModel> categories = List();

  @override
  void initState() {
    categories = getCategories();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        elevation: 0.0,
        title: BrandName(),
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Color(0xFFCFD8DC),
                borderRadius: BorderRadius.circular(30),
              ),
              margin: EdgeInsets.symmetric(horizontal: 24),
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "search",
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  Icon(Icons.search_rounded),
                ],
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 5),
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(30)),
              height: 80,
              width: 400,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: categories.length,
                  shrinkWrap: true,
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  itemBuilder: (context, index) {
                    return CategoriesTile(
                      imgUrl: categories[index].imgUrl,
                      title: categories[index].categorieName,
                    );
                  }),
            ),
            SizedBox(
              height: 16,
            ),
          ],
        ),
      ),
    );
  }
}

class CategoriesTile extends StatelessWidget {
  String imgUrl, title;

  CategoriesTile({@required this.title, @required this.imgUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              imgUrl,
              height: 80,
              width: 130,
              fit: BoxFit.fill,
            ),
          ),
          Container(
            //color: Colors.black26,
            height: 80,
            width: 130,
            alignment: Alignment.center,
            //margin: EdgeInsets.symmetric(horizontal: 25, vertical: 30),
            child: Text(
              title,
              style: TextStyle(
                  fontSize: 15, fontFamily: 'Ubuntu', color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
