import 'package:flutter/material.dart';

class QuickAdd extends StatefulWidget {
  @override
  _QuickAddState createState() => _QuickAddState();
}

class _QuickAddState extends State<QuickAdd> {
  final PreferredSizeWidget buildAppBar = AppBar(
    iconTheme: IconThemeData(
      color: Colors.black,
    ),
    actions: [
      IconButton(
        onPressed: () {},
        icon: Icon(Icons.notifications),
        color: Colors.black,
      )
    ],
    backgroundColor: Colors.white,
    title: Center(
      child: Text(
        "Dashboard",
        style: TextStyle(
          color: Colors.black,
        ),
      ),
    ),
  );

  final _form = GlobalKey<FormState>();
  final _titleFocusNode = FocusNode();
  final _dateTimeFocusNode = FocusNode();
  final _amountFocusNode = FocusNode();
  String typeValue = '';

  @override
  Widget build(BuildContext context) {
    final mediaquery = MediaQuery.of(context);
    return Scaffold(
      appBar: buildAppBar,
      drawer: Drawer(),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Form(
            key: _form,
            child: ListView(
              children: <Widget>[
                Text('Select Type'),
                ButtonBar(
                  alignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text('Income'),
                    Radio(
                      value: 'Income',
                      groupValue: typeValue,
                      activeColor: Colors.blue,
                      onChanged: (val) {
                        setState(() {
                          typeValue = val.toString();
                        });
                      },
                    ),
                    Text('Expense'),
                    Radio(
                      value: 'Expense',
                      groupValue: typeValue,
                      activeColor: Colors.blue,
                      onChanged: (val) {
                        setState(() {
                          typeValue = val.toString();
                        });
                      },
                    ),
                    Text('Investment'),
                    Radio(
                      value: 'Investment',
                      groupValue: typeValue,
                      activeColor: Colors.blue,
                      onChanged: (val) {
                        setState(() {
                          typeValue = val.toString();
                        });
                      },
                    ),
                  ],
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Title'),
                  textInputAction: TextInputAction.next,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please provide a value';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Date & Time'),
                  textInputAction: TextInputAction.next,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please provide a value';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Amount'),
                  textInputAction: TextInputAction.next,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please provide a value';
                    }
                    return null;
                  },
                ),
                ExpansionTile(
                  title: Text('Expand'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
