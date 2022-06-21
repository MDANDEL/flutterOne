import 'package:flutter/material.dart';

class PageState extends StatefulWidget {
  const PageState({Key? key}) : super(key: key);
  @override
  _PageStateState createState() => _PageStateState();
}

class _PageStateState extends State<PageState> {
  bool _isLiked = false;
  int _indexTab = 0;

  void _handleSelectTab(int index){
    setState(() {
      _indexTab = index;
    });
  }

  void _likeThis() {
    setState(() {
      _isLiked = !_isLiked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        centerTitle: true,
        leading: IconButton(
          icon: _isLiked ? Icon(Icons.favorite) : Icon(Icons.favorite_border),
          onPressed: _likeThis,
        ),
        actions: [Icon(Icons.accessibility_outlined)],
      ),
      body: _isLiked
          ? Text('Hello Stateful', textAlign: TextAlign.center)
          : Text('Hello', textAlign: TextAlign.center),
      floatingActionButton: FloatingActionButton(
        onPressed: _likeThis,
        backgroundColor: Colors.red,
        child: _isLiked ? Icon(Icons.favorite) : Icon(Icons.favorite_border),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Favorites')],
        onTap: _handleSelectTab,
        currentIndex: _indexTab,
      ),
      backgroundColor: _isLiked ? Colors.blueAccent : Colors.blueGrey,
    );
  }
}
