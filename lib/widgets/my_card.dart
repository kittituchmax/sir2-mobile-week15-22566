import 'package:flutter/material.dart';

class Menu {
  final String? title;
  final IconData? icon;
  final Color? bkColor;
  const Menu({this.title, this.icon, this.bkColor});
}

List<Menu> menu = [
  const Menu(title: 'MENU-1', icon: Icons.person, bkColor: Colors.purple),
  const Menu(title: 'MENU-2', icon: Icons.person_add, bkColor: Colors.blue),
  const Menu(title: 'MENU-3', icon: Icons.power_off, bkColor: Colors.red),
  const Menu(title: 'MENU-4', icon: Icons.wifi, bkColor: Colors.green),
];

class MyCard extends StatelessWidget {
  //1.Constructor
  const MyCard({super.key});
  //2.Build
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text("My Card"),
      ),
      body: Container(
        child: GridView.count(
          crossAxisCount: 3,
          children: List.generate(menu.length, (index) {
            return Card(
              color: menu[index].bkColor ,
              margin: const EdgeInsets.all(12),
              child: InkWell(
                onTap: () {
                  debugPrint('${menu[index].title}');
                },
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(menu[index].icon, size: 40, color: Colors.white),
                      Text('${menu[index].title}',style:const TextStyle(fontSize: 15.0, color: Colors.white)),
                    ],
                  ),
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}