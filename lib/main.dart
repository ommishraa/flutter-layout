import 'package:flutter/material.dart';
import 'package:flutter_layouts/cards.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ListViews',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('ListViews'),
        ),
        body: BodyLayout(),
        // body: MyStatelessWidget(),
      ),
    );
  }
}

class BodyLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _myListView(context);
  }
}

// Static List view
Widget _myListView(BuildContext context) {
  return ListView(
    children: ListTile.divideTiles(
      context: context,
      tiles: [
        ListTile(
          title: Text('Sun'),
        ),
        ListTile(
          title: Text('Moon'),
        ),
        ListTile(
          title: Text('Star'),
        ),
      ],
    ).toList(),
  );
}

//Dynamic List view
// Widget _myListView(BuildContext context) {
//   // backing data
//   final europeanCountries = [
//     'Albania',
//     'Andorra',
//     'Armenia',
//     'Austria',
//     'Azerbaijan',
//     'Belarus',
//     'Belgium',
//     'Bosnia and Herzegovina',
//     'Bulgaria',
//     'Croatia',
//     'Cyprus',
//     'Czech Republic',
//     'Denmark',
//     'Estonia',
//     'Finland',
//     'France',
//     'Georgia',
//     'Germany',
//     'Greece',
//     'Hungary',
//     'Iceland',
//     'Ireland',
//     'Italy',
//     'Kazakhstan',
//     'Kosovo',
//     'Latvia',
//     'Liechtenstein',
//     'Lithuania',
//     'Luxembourg',
//     'Macedonia',
//     'Malta',
//     'Moldova',
//     'Monaco',
//     'Montenegro',
//     'Netherlands',
//     'Norway',
//     'Poland',
//     'Portugal',
//     'Romania',
//     'Russia',
//     'San Marino',
//     'Serbia',
//     'Slovakia',
//     'Slovenia',
//     'Spain',
//     'Sweden',
//     'Switzerland',
//     'Turkey',
//     'Ukraine',
//     'United Kingdom',
//     'Vatican City'
//   ];

//   return ListView.builder(
//     itemCount: europeanCountries.length,
//     itemBuilder: (context, index) {
//       return ListTile(
//         title: Text(europeanCountries[index]),
//       );
//     },
//   );
// }

// Infinite list view
// Widget _myListView(BuildContext context) {
//   return ListView.builder(
//     itemBuilder: (context, index) {
//       return ListTile(
//         title: Text('row $index'),
//       );
//     },
//   );
// }
