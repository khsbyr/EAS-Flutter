import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:eas_flutter/theme/colors.dart';

class NewsPage extends StatefulWidget {
  @override
  _NewsPageState createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  List articles = [];
  bool isLoading = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this.fetchArticle();
  }

  fetchArticle() async {
    setState(() {
      isLoading = true;
    });
    var url = Uri.parse('http://10.0.2.2:8000/api/article-list');
    var response = await http.get(url);

    if (response.statusCode == 200) {
      var items = json.decode(utf8.decode(response.bodyBytes));
      setState(() {
        articles = items;
        isLoading = false;
      });
    } else {
      setState(() {
        articles = [];
        isLoading = false;
      });
    }
  }

  static String utf8convert(String text) {
    List<int> bytes = text.toString().codeUnits;
    return utf8.decode(bytes);
  }

  @override
  Widget build(BuildContext context) {
    return getBody();
  }

  Widget getBody() {
    if (articles.contains(null) || articles.length < 0 || isLoading) {
      return CircularProgressIndicator();
    }
    return ListView.builder(
      itemBuilder: (context, index) {
        return index == 0 ? _searchBar() : getCard(articles[index - 1]);
      },
      itemCount: articles.length + 1,
    );
  }

  _searchBar() {
    return Padding(
      padding: EdgeInsets.all(8),
      child: TextField(
          decoration: InputDecoration(hintText: 'Хайх..'),
          onChanged: (text) {
            text = text.toLowerCase();
            setState(() {
              articles = articles.where((index) {
                var title = index['title'].toLowerCase();
                return title.contains(text);
              }).toList();
            });
          }),
    );
  }

  Widget getCard(index) {
    var title = index['title'];
    var date = index['date'];
    var description = index['description'];
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListTile(
          title: Row(
            children: <Widget>[
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  color: primary,
                  borderRadius: BorderRadius.circular(60 / 2),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://e3.365dm.com/20/11/768x432/skynews-brexit-breaking-news_5177180.jpg?20201123152327")),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      title.toString(),
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      date,
                      style: TextStyle(color: Colors.grey),
                    ),
                    Text(
                      description.toString(),
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
