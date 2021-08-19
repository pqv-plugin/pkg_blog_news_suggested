import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';

class SuggestedNewsList extends StatefulWidget {
  final List<dynamic> data;

  const SuggestedNewsList({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  _SuggestedNewsListState createState() => _SuggestedNewsListState();
}

class _SuggestedNewsListState extends State<SuggestedNewsList> {
  List<ResponsiveGridCol> _buildItens() {
    return [
      ResponsiveGridCol(
        lg: 12,
        child: Container(
          height: 100,
          alignment: Alignment(0, 0),
          color: Colors.purple,
          child: Text("lg : 12"),
        ),
      )
    ];
  }
  _future(){
    
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: _future(),
        builder: (context, snapshot) {
          return Container();
        });
    // (child: ResponsiveGridRow(children: _buildItens()));
  }
}
