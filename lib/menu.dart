import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:info_sante/fasq.dart';
import 'package:info_sante/infosCity.dart';
// import 'package:info_sante/news.dart';

 void main() => runApp(const Menu());
	
  class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

	  @override
    Widget build(BuildContext context) {
      return const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MenuTabBar(),
      );
    }
  }
	
  class MenuTabBar extends StatefulWidget {
  const MenuTabBar({Key? key}) : super(key: key);

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
            body: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 60),
                  child: TabBar(
                    labelColor: Colors.black,
                    unselectedLabelColor: Colors.black,
                    labelStyle: const TextStyle(fontWeight: FontWeight.bold),
                    unselectedLabelStyle: const TextStyle(fontStyle: FontStyle.italic),
                    overlayColor: MaterialStateColor.resolveWith((Set<MaterialState> states) {
                      if(states.contains(MaterialState.pressed))
                        {
                          return Colors.blue;
                        } 
                      if(states.contains(MaterialState.focused)) {
                        return Colors.orange;
                        } 
                      else if(states.contains(MaterialState.hovered)) {
                        return Colors.black;
                      }	
                      return Colors.transparent;
                      }
                    ),
                  indicatorWeight: 2,
                  indicatorColor: Colors.red,
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicatorPadding: const EdgeInsets.all(2),
                  indicator: const UnderlineTabIndicator(
                    borderSide: BorderSide(width: 2, color: Colors.orange), 
                    insets: EdgeInsets.symmetric(horizontal: 25)
                  ),
                  isScrollable: true,
                  physics: const BouncingScrollPhysics(),
                  onTap: (int index) {
                    print('Tab $index is tapped');
                  },
                  tabs: _tabs,
                  ),
                ),
              // ignore: prefer_const_constructors
                Expanded(
                  child: const TabBarView(
                    physics: BouncingScrollPhysics(),
                    children: _views,
                  ),
                ),
              ],
            )
          ),
        ),
      );
    }
  }