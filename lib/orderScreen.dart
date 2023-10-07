import 'package:flutter/material.dart';

class Screen extends StatefulWidget {
  const Screen({super.key});

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        //title: Text('Hello'),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: () {},
              child: Icon(
                Icons.search,
                size: 26.0,
                color: Colors.black,
              ),
            ),
          )
        ],
      ),
      body: Container(
        child: Column(
          children: [
            Text(
              'My Bag',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 34,
              ),
            ),
            Column(

            )
          ],
        ),
      ),
    );
  }
}

class CounterApp extends StatefulWidget {
  @override
  _CounterAppState createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  int itemCount = 0;
  double unitPrice = 10.0;

  @override
  Widget build(BuildContext context) {
    double totalAmount = itemCount * unitPrice;

    return Scaffold(
      appBar: AppBar(
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Number of Items: $itemCount'),
            Text('Unit Price: \$${unitPrice.toStringAsFixed(2)}'),
            Text('Total Amount: \$${totalAmount.toStringAsFixed(2)}'),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Icon(Icons.remove),
                  onPressed: () {
                    setState(() {
                      if (itemCount > 0) {
                        itemCount--;
                      }
                    });
                  },
                ),
                Text('$itemCount'),
                IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () {
                    setState(() {
                      itemCount++;
                    });
                  },
                ),
              ],
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // TODO: Implement CHECK OUT logic here
                final snackBar = SnackBar(
                  content: Text('Congratulations!'),
                );
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
              child: Text('CHECK OUT'),
            ),
          ],
        ),
      ),
    );
  }
}