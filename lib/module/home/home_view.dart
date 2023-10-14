import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  static const String routeName = 'home_view';
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home View'),
        actions: [
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              // Implement your settings functionality here
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                // Navigate to the create quotation screen
                // Navigator.push(context, MaterialPageRoute(builder: (_) => CreateQuotationView()));
                // Implement your create quotation functionality here
              },
              child: Text('Create Quotation'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navigate to the manage client screen
                // Navigator.push(context, MaterialPageRoute(builder: (_) => ManageClientView()));
                // Implement your manage client functionality here
              },
              child: Text('Manage Client'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navigate to the order screen
                // Navigator.push(context, MaterialPageRoute(builder: (_) => OrderView()));
                // Implement your order functionality here
              },
              child: Text('Order'),
            ),
          ],
        ),
      ),
    );
  }
}
