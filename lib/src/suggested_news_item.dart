import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';

class SuggestedNewsItem extends StatelessWidget {
  const SuggestedNewsItem({Key? key}) : super(key: key);

  @override
  ResponsiveGridCol build(BuildContext context) {
    return ResponsiveGridCol(
        lg: 12,
        child: Container(
          height: 100,
          alignment: Alignment(0, 0),
          color: Colors.purple,
          child: Text("lg : 12"),
        ),
      );
    // return Container(
    //   constraints: BoxConstraints(
    //     maxWidth: 300,
    //     minWidth: 200
    //   ),
    //   decoration: BoxDecoration(
    //     borderRadius: BorderRadius.circular(3),
    //     border: Border.all(color: Colors.grey),
    //     color: Colors.white,
    //   ),
    //   child: Column(
    //     children: [
    //       Align(
    //         child: Container(
    //           height: 70,
    //           alignment: Alignment.topLeft,
    //           // child: Image.network('${this.image}'),
    //         ),
    //       ),
    //       Align(
    //         alignment: Alignment.centerLeft,
    //         child: Container(
    //           child: Text(
    //             'X',
    //             style: TextStyle(
    //                 fontWeight: FontWeight.bold,
    //                 fontSize: 10,
    //                 color: Colors.grey),
    //           ),
    //         ),
    //       ),
    //       Container(
    //         alignment: Alignment.centerLeft,
    //         child: Text('O',
    //             style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
    //             textAlign: TextAlign.left),
    //       ),
    //       Container(
    //         alignment: Alignment.centerLeft,
    //         child: Text(
    //           'P',
    //           style: TextStyle(fontSize: 10),
    //         ),
    //       ),
    //       Align(
    //         alignment: Alignment.bottomLeft,
    //         child: Container(
    //           child: TextButton(
    //             onPressed: () {},
    //             child: Text(
    //               'Veja o mais recente',
    //               style: TextStyle(fontSize: 10),
    //             ),
    //           ),
    //         ),
    //       ),
    //     ],
    //   ),
    // );
  }
}
