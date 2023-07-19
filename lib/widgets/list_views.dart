import 'package:flutter/material.dart';

class ListViewWidget extends StatelessWidget {
  final List<Widget> tabs = [
    Tab(text: 'Horizontal'),
    Tab(text: 'Separated'),
    Tab(text: 'Builder'),
    Tab(text: 'ShrinkWrap'),
    Tab(text: 'Custom Item Extent'),
    Tab(text: 'Custom Scroll Controller'),
    Tab(text: 'Primary'),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        appBar: AppBar(
          title: Text('ListViews'),
          bottom: TabBar(
            tabs: tabs,
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height,
              child: HorizontalListViewWidget(),
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              child: SeparatedListViewWidget(),
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              child: BuilderListViewWidget(),
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              child: ShrinkWrapListViewWidget(),
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              child: CustomItemExtentListViewWidget(),
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              child: CustomScrollControllerListViewWidget(),
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              child: PrimaryListViewWidget(),
            ),
          ],
        ),
      ),
    );
  }
}

class HorizontalListViewWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            width: 100.0,
            color: Colors.red,
          ),
          Container(
            width: 100.0,
            color: Colors.green,
          ),
          Container(
            width: 100.0,
            color: Colors.blue,
          ),
        ],
      ),
    );
  }
}

class SeparatedListViewWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title: Text('Item $index'),
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return Divider();
      },
      itemCount: 5,
    );
  }
}

class BuilderListViewWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title: Text('Item $index'),
        );
      },
      itemCount: 10,
    );
  }
}

class ShrinkWrapListViewWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: <Widget>[
        ListTile(
          title: Text('Item 1'),
        ),
        ListTile(
          title: Text('Item 2'),
        ),
        ListTile(
          title: Text('Item 3'),
        ),
      ],
    );
  }
}

class CustomItemExtentListViewWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemExtent: 80.0,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          color: Colors.blue,
          child: Center(
            child: Text('Item $index'),
          ),
        );
      },
      itemCount: 5,
    );
  }
}

class CustomScrollControllerListViewWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScrollController _controller = ScrollController();

    return ListView(
      controller: _controller,
      children: <Widget>[
        ListTile(
          title: Text('Item 1'),
        ),
        ListTile(
          title: Text('Item 2'),
        ),
        ListTile(
          title: Text('Item 3'),
        ),
      ],
    );
  }
}

class PrimaryListViewWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      primary: true,
      children: <Widget>[
        ListTile(
          title: Text('Item 1'),
        ),
        ListTile(
          title: Text('Item 2'),
        ),
        ListTile(
          title: Text('Item 3'),
        ),
      ],
    );
  }
}

class ListViewsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 1,
      itemBuilder: (context, index) {
        return ListViewWidget();
      },
    );
  }
}
