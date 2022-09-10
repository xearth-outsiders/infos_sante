import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:info_sante/fasq.dart';
import 'package:info_sante/infosCity.dart';
import 'package:info_sante/news.dart';
// import 'package:widget_in_class/cont1.dart';
// import 'package:widget_in_class/cont2.dart';
// import 'package:widget_in_class/cont3.dart';
// import 'package:widget_in_class/cont4.dart';
// import 'package:widget_in_class/cont5.dart';
// import 'package:widget_in_class/cont6.dart';

 void main() => runApp(const Menu());
	
  class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

	  @override
    Widget build(BuildContext context) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MenuTabBar(),
      );
    }
  }
	
  class MenuTabBar extends StatefulWidget {
    @override
    State<StatefulWidget> createState() {
      return _MenuTabBarState();
    }
  }
	
  class _MenuTabBarState extends State<MenuTabBar> with TickerProviderStateMixin {
    late TabController _tabController;
    @override
    void initState() {
      super.initState();
      _tabController = TabController(length: 2, vsync: this);
      // _tabController.animateTo(2);
    }
	
    static const List<Tab> _tabs = [
       Tab(child: Text('Nouvelles')),
       Tab(child: Text("FAQs")),
    ];
	
    static const List<Widget> _views = [
      InfosCity(),
	    Faqs()
    ];
	
    @override
    Widget build(BuildContext context) {
      return MaterialApp(
        home: DefaultTabController(
          length: 2,
          child: Scaffold(
            appBar: AppBar(
              bottom: TabBar(
                labelColor: Colors.black,
                unselectedLabelColor: Colors.black,
                labelStyle: const TextStyle(fontWeight: FontWeight.bold),
                unselectedLabelStyle: const TextStyle(fontStyle: FontStyle.italic),
                overlayColor: MaterialStateColor.resolveWith((Set<MaterialState> states) {
                  if (states.contains(MaterialState.pressed)) {
                    return Colors.blue;
                  } if (states.contains(MaterialState.focused)) {
                    return Colors.orange;
                  } else if (states.contains(MaterialState.hovered)) {
                    return Colors.black;
                  }	
                  return Colors.transparent;
                }),
                indicatorWeight: 10,
                indicatorColor: Colors.red,
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorPadding: const EdgeInsets.all(5),
                indicator: const BoxDecoration(
                  border: Border(
                    // top: BorderSide(width: 16.0, color: Colors.lightBlue.shade50),
                    bottom: BorderSide(width: 2.0, color: Colors.orange),
                  ),
                  // color: Colors.black,
                ),
                isScrollable: true,
                physics: const BouncingScrollPhysics(),
                onTap: (int index) {
                  print('Tab $index is tapped');
                },
                enableFeedback: true,
                tabs: _tabs,
              ),
              // title: const Text('Woolha.com Flutter Tutorial'),
              backgroundColor: Colors.white,
            ),
            backgroundColor: Colors.white,
	
            body: const TabBarView(
              physics: BouncingScrollPhysics(),
              children: _views,
            ),
          ),
        ),
      );
    }
  }