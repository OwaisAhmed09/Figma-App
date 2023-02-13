import 'package:flutter/material.dart';
import 'package:newapp/screens/dashboard_view.dart';
import 'package:newapp/utils/color_constants.dart';
import 'package:newapp/utils/text_constants.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});
  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            color: ColorConstants.primaryColor,
          ),
          Container(
            height: 500,
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: ElevatedButton(
              onPressed: () {
                // ye loging button ka btata hai k kha jana ha kis page pe uska nam dena hai. "example : DashboardView()"
                showMyDialogBox(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const DashboardView()),
                );
              },
              child: Text(
                TextConstants.goToDashboard,
                style: const TextStyle(fontSize: 50),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 25,
              itemBuilder: (context, index) {
                return Text(
                  TextConstants.showItemCountInListView,
                  style: TextStyle(fontSize: 35),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

Future<void> showMyDialogBox(context) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('AlertDialog Title'),
        content: SingleChildScrollView(
          child: ListBody(
            children: const <Widget>[
              Text('This is a demo alert dialog.'),
              Text('Would you like to approve of this message?'),
            ],
          ),
        ),
        actions: <Widget>[
          TextButton(
            child: const Text('Approve'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}
