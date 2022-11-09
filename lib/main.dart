// import 'package:flutter/material.dart';
// import 'package:flutter_assignment/video-audio/audio/vHome.dart';
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//  @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.purple,
//         visualDensity: VisualDensity.adaptivePlatformDensity,
//       ),
//       home: vHomePage(
//         title: 'Recordings',
//       ),
//     );
//   }
// }

//
import 'package:flutter/material.dart';
import 'package:flutter_assignment/mainScreen.dart';



void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Assignment App',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
    );
  }
}

//****************firestore**************


//
//
// import 'package:flutter/material.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:flutter_assignment/Cloud%20firestore/page/addPage.dart';
//
//
// void main() async{
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();
//   runApp(MyApp());}
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final appName = 'Flutter Demo';
//
//     return MaterialApp(
//         title: appName,
//         theme: ThemeData(
//           brightness: Brightness.light,
//           primaryColor: Colors.orange,
//           fontFamily: 'Georgia',
//
// //text styling
//           textTheme: TextTheme(
//             displayLarge: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
//             titleLarge: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
//             bodyMedium: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
//           ),
//         ),
//         home:AddPage()
//     );
//   }
// }

//***************sqflite*************

//
// import 'package:flutter_assignment/sqflite%20crud/model/user.dart';
// import 'package:flutter_assignment/sqflite%20crud/screens/addUser.dart';
// import 'package:flutter_assignment/sqflite%20crud/screens/editUser.dart';
// import 'package:flutter_assignment/sqflite%20crud/screens/viewUser.dart';
// import 'package:flutter_assignment/sqflite%20crud/services/userServices.dart';
// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Sqflite Crud',
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         primarySwatch: Colors.teal,
//       ),
//       home: const MyHomePage(),
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key}) : super(key: key);
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   late List<User> _userList = <User>[];
//   final _userService = UserService();
//
//   getAllUserDetails() async {
//     var users = await _userService.readAllUsers();
//     _userList = <User>[];
//     users.forEach((user) {
//       setState(() {
//         var userModel = User();
//         userModel.id = user['id'];
//         userModel.name = user['name'];
//         userModel.contact = user['contact'];
//         userModel.description = user['description'];
//         _userList.add(userModel);
//       });
//     });
//   }
//
//   @override
//   void initState() {
//     getAllUserDetails();
//     super.initState();
//   }
//
//   _showSuccessSnackBar(String message) {
//     ScaffoldMessenger.of(context).showSnackBar(
//       SnackBar(
//         content: Text(message),
//       ),
//     );
//   }
//
//   _deleteFormDialog(BuildContext context, userId) {
//     return showDialog(
//         context: context,
//         builder: (param) {
//           return AlertDialog(
//             title: const Text(
//               'Are You Sure to Delete',
//               style: TextStyle(color: Colors.teal, fontSize: 20),
//             ),
//             actions: [
//               TextButton(
//                   style: TextButton.styleFrom(
//                       foregroundColor: Colors.white, backgroundColor: Colors.red),
//                   onPressed: ()  async{
//                     var result=await _userService.deleteUser(userId);
//                     if (result != null) {
//                       Navigator.pop(context);
//                       getAllUserDetails();
//                       _showSuccessSnackBar(
//                           'User Detail Deleted Success');
//                     }
//                   },
//                   child: const Text('Delete')),
//               TextButton(
//                   style: TextButton.styleFrom(
//                       foregroundColor: Colors.white, backgroundColor: Colors.teal),
//                   onPressed: () {
//                     Navigator.pop(context);
//                   },
//                   child: const Text('Close'))
//             ],
//           );
//         });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("SQLite CRUD"),
//       ),
//       body: ListView.builder(
//           itemCount: _userList.length,
//           itemBuilder: (context, index) {
//             return Card(
//               child: ListTile(
//                 onTap: () {
//                   Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                           builder: (context) => ViewUser(
//                             user: _userList[index],
//                           )));
//                 },
//                 leading: const Icon(Icons.person),
//                 title: Text(_userList[index].name ?? ''),
//                 subtitle: Text(_userList[index].contact ?? ''),
//                 trailing: Row(
//                   mainAxisSize: MainAxisSize.min,
//                   children: [
//                     IconButton(
//                         onPressed: () {
//                           Navigator.push(
//                               context,
//                               MaterialPageRoute(
//                                   builder: (context) => EditUser(
//                                     user: _userList[index],
//                                   ))).then((data) {
//                             if (data != null) {
//                               getAllUserDetails();
//                               _showSuccessSnackBar(
//                                   'User Detail Updated Success');
//                             }
//                           });
//                         },
//                         icon: const Icon(
//                           Icons.edit,
//                           color: Colors.teal,
//                         )),
//                     IconButton(
//                         onPressed: () {
//                           _deleteFormDialog(context, _userList[index].id);
//                         },
//                         icon: const Icon(
//                           Icons.delete,
//                           color: Colors.red,
//                         ))
//                   ],
//                 ),
//               ),
//             );
//           }),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           Navigator.push(context,
//               MaterialPageRoute(builder: (context) => const AddUser()))
//               .then((data) {
//             if (data != null) {
//               getAllUserDetails();
//               _showSuccessSnackBar('User Detail Added Success');
//             }
//           });
//         },
//         child: const Icon(Icons.add),
//       ),
//     );
//   }
// }
//
// import 'package:flutter/material.dart';
// import 'package:flutter_assignment/sqflite/add_student.dart';
// import 'package:flutter_assignment/sqflite/list_students.dart';
//
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Home(),
//     );
//   }
// }
//
// class Home extends StatefulWidget {
//   @override
//   _HomeState createState() => _HomeState();
// }
//
// class _HomeState extends State<Home> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Sqlite and Sqflite"),
//       ),
//       body: Container(
//         alignment: Alignment.topCenter,
//         padding: EdgeInsets.all(20),
//         child: Column(
//             children:[
//
//               ElevatedButton(
//                 onPressed: (){
//                   Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
//                     return AddStudent();
//                   }));
//                 },
//                 child: Text("Add Student"),
//               ),
//
//               ElevatedButton(
//                 onPressed: (){
//                   Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
//                     return ListStudents();
//                   }));
//                 },
//                 child: Text("List Student Record"),
//               ),
//
//             ]
//         ),
//       ),
//     );
//   }
//
// }

