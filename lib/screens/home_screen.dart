import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:todo/provider/home_provider.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = 'Home Screen';

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => HomeProvider(),
      builder: (context, child) {

        var homeProvider = Provider.of<HomeProvider>(context);

        return Scaffold(
          appBar: AppBar(
            title: Text(
              'To Do List',
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          bottomNavigationBar: BottomAppBar(

            shape: CircularNotchedRectangle(
            ),
            notchMargin: 10.r,
            clipBehavior: Clip.antiAliasWithSaveLayer,

            child: BottomNavigationBar(
              currentIndex: homeProvider.selectedIndex,
              onTap: (value) {
                homeProvider.changeIndex(value);
              },
              backgroundColor: Theme.of(context).secondaryHeaderColor,
              items: [
                BottomNavigationBarItem(
                    backgroundColor: Theme.of(context).secondaryHeaderColor,
                    icon: Icon(
                      Icons.list,
                      size: 35.r,
                    ),
                    label: ''),
                BottomNavigationBarItem(
                    backgroundColor: Theme.of(context).secondaryHeaderColor,
                    icon: Icon(
                      Icons.settings,
                      size: 35.r,
                    ),
                    label: ''),
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(

            child: Icon(Icons.add),
            onPressed: () {},
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,


          body: homeProvider.tabs[homeProvider.selectedIndex],
        );
      },

    );
  }
}
