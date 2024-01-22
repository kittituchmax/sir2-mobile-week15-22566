import 'package:flutter/material.dart';

class ListMenu{
  final String? title;
  final String? subtitle;
  final IconData? icon;
  const ListMenu({this.title , this.subtitle , this.icon});
}

List<ListMenu> menu = [
  const ListMenu(title: 'MENU-1' , subtitle: 'SUB-1' , icon: Icons.person),
  const ListMenu(title: 'MENU-2' , subtitle: 'SUB-2' , icon: Icons.person_add),
  const ListMenu(title: 'MENU-3' , subtitle: 'SUB-3' , icon: Icons.wifi),
  const ListMenu(title: 'MENU-4' , subtitle: 'SUB-4' , icon: Icons.build),
];

class ListViweMenu extends StatelessWidget {
  const ListViweMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text("List Viwe Menu"),
      ),
      body: Container(
        child: ListView.separated(
            itemBuilder: (context, index) {
              return ListTile(
                title: Text("${menu[index].title}"),
                subtitle: Text("${menu[index].subtitle}"),
                leading:  CircleAvatar(
                  child: Icon(menu[index].icon),
                ),
                trailing: const Icon(Icons.arrow_right),
                onTap: () {
                  debugPrint(menu[index].title);
                  if (Navigator.canPop(context)){
                    Navigator.pop(context,menu[index].title);
                  }
                },
              );
            },
            separatorBuilder: (context, index) {
              return const Divider(color: Colors.red);
            },
            itemCount: menu.length),
      ),
    );
  }
}