import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Text('WhatsApp'),
            bottom: const TabBar(tabs: [
              Tab(child: Icon(Icons.camera_alt)),
              Tab(child: Text('Chats')),
              Tab(child: Text('Status')),
              Tab(child: Text('Calls'))
            ]),
            actions: [
              Icon(Icons.search),
              SizedBox(
                width: 10,
              ),
              PopupMenuButton(
                  icon: Icon(Icons.more_vert_outlined),
                  itemBuilder: (context) => [
                        PopupMenuItem(value: 1, child: Text('New Group')),
                        PopupMenuItem(value: 2, child: Text('Settings ')),
                        PopupMenuItem(value: 3, child: Text('Logout'))
                      ]),
              SizedBox(
                width: 10,
              ),
            ],
          ),
          body: TabBarView(children: [
            Text('hello'),
            ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://static01.nyt.com/images/2019/05/18/arts/johnwick-anatomy/johnwick-anatomy-square640-v3.jpg'),
                    ),
                    title: Text('Jhon Wick'),
                    subtitle: Text('Where r you nigga? u stupid Dog'),
                    trailing: Text('6:52 PM'),
                  );
                }),
            Text('hello'),
            ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://static01.nyt.com/images/2019/05/18/arts/johnwick-anatomy/johnwick-anatomy-square640-v3.jpg'),
                    ),
                    title: Text('Jhon Wick'),
                    subtitle: Text('Today,12:56 AM'),
                    trailing: Icon(Icons.phone),
                  );
                }),
          ]),
        ));
  }
}
