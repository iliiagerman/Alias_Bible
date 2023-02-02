// import 'package:flutter/material.dart';
// import 'package:flutter/cupertino.dart';
//
// class HomePage extends StatelessWidget {
//   const HomePage({super.key});
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         automaticallyImplyLeading: false,
//         title: Text("Flutter Cupertino Alert Dialog Demo"),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Image.asset("assets/logo.png",scale: 12,),
//             SizedBox(height: 50,),
//             RaisedButton(
//               color: Colors.green[100],
//               onPressed: () {
//                 _showDialog(context);
//               },
//               child: Text('Show AlertDialog'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   _showDialog(BuildContext context){
//     showDialog(
//         context: context,
//         child:   CupertinoAlertDialog(
//           title: Column(
//             children: <Widget>[
//               Text("CupertinoAlertDialog"),
//               Icon(
//                 Icons.favorite,
//                 color: Colors.red,
//               ),
//             ],
//           ),
//           content: new Text( "An iOS-style alert dialog."+
//               "An alert dialog informs the user about situations that require acknowledgement."
//                   " An alert dialog has an optional title, optional content, and an optional list of actions."),
//           actions: <Widget>[
//             CupertinoDialogAction(
//               child: Text("OK"),
//               onPressed: () {
//                 Navigator.of(context).pop();
//               },),
//             CupertinoDialogAction(
//               child: Text("CANCEL"),
//               onPressed: () {
//                 Navigator.of(context).pop();
//               },),
//             CupertinoDialogAction(
//               child: Text("MAY BE"),
//               onPressed: () {
//                 Navigator.of(context).pop();
//               },),
//           ],
//         )
//     );
//   }
// }