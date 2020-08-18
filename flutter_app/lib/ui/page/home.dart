import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  TabController _tabController; //需要定义一个Controller

  List tabs = ["今日日程", "数据看板", "待办事项", "工作动态"];
  @override
  void initState() {
    super.initState();
    // 创建Controller
    _tabController = TabController(length: tabs.length,vsync: this);
    _tabController.addListener(() {
      switch(_tabController.index){
        case 1:
          print('1');
          break;
        case 2:
          print('2');
          break;
        default:
          break;
      }
    });
  }

  int _selectIndex=1;
  void _onItemTap(int index){
    setState(() {
      _selectIndex=index;
    });
  }
  void _onAdd(){

  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        bottom:TabBar(
          controller: _tabController,
          tabs: tabs.map((e)=>Tab(text:e)).toList(),
        )
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Container(
            alignment:Alignment.center,
            child:Text('今日',textScaleFactor:5),
          ),
          Container(
            alignment:Alignment.center,
            child:Text('今日',textScaleFactor:5),
          ),
          Container(
            alignment:Alignment.center,
            child:Text('今日',textScaleFactor:5),
          ),
          Container(
            alignment:Alignment.center,
            child:Text('今日',textScaleFactor:5),
          )
        ],
//          tabs.map((e) {
//          return Container(
//            alignment:Alignment.center,
//              child:Text(e,textScaleFactor:5),
//          );
//        }).toList(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon:Icon(Icons.home),title: Text('首页')),
          BottomNavigationBarItem(icon:Icon(Icons.business),title: Text('CRM')),
          BottomNavigationBarItem(icon:Icon(Icons.school),title: Text('办公')),
          BottomNavigationBarItem(icon:Icon(Icons.message),title: Text('消息')),
          BottomNavigationBarItem(icon:Icon(Icons.person),title: Text('我的')),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectIndex,
        fixedColor: Colors.blue,
        unselectedItemColor:Colors.black45,
        onTap: _onItemTap,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: _onAdd,
      ),
    );
  }
}