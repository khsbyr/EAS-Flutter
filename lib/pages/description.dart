// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';

// class Description extends StatefulWidget {
//   Description(String description);

//   @override
//   _DescriptionState createState() => _DescriptionState();
// }

// class _DescriptionState extends State<Description> {
//   List articles = [];
//   bool isLoading = false;
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     this.fetchArticle();
//   }

//   fetchArticle() async {
//     setState(() {
//       isLoading = true;
//     });
//     var url = Uri.parse('http://10.0.2.2:8000/api/article-list');
//     var response = await http.get(url);

//     if (response.statusCode == 200) {
//       var items = json.decode(utf8.decode(response.bodyBytes));
//       setState(() {
//         articles = items;
//         isLoading = false;
//       });
//     } else {
//       setState(() {
//         articles = [];
//         isLoading = false;
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return getDesk();
//   }

//   Widget getDesk() {
//     if (articles.contains(null) || articles.length < 0 || isLoading) {
//       return CircularProgressIndicator();
//     }
//     return ListView.builder(
//         itemCount: articles.length,
//         itemBuilder: (context, index) {
//           return getCard(articles[index]);
//         });
//   }

//   Widget getCard(index) {
//     var description = index['description'];
//     return Text(
//       description,
//       style: TextStyle(
//         fontSize: 12,
//       ),
//     );
//   }
// }
