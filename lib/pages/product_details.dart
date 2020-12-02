import 'package:flutter/material.dart';
import 'package:task8package/pages/products.dart';
class ProductDetails extends StatefulWidget {
  final product_name;
  final product_picture;
  final product_cost;
  final product_details;
  ProductDetails({
    this.product_name,
    this.product_picture,
    this.product_cost,
    this.product_details
  });
  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  bool _visible = true;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width * 0.6;
    return Scaffold(
      appBar: AppBar(
        title: Text('FashApp', style: TextStyle(color: Colors.white),),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.pink,
      ),
      body: Center(
        child: Column(
          children: [
            AnimatedOpacity(
              opacity: _visible?1:0,
              duration: Duration(
                  seconds: 5
              ),
              child: Container(
                height: 300.0,
                width: width,
                child: Image.asset(widget.product_picture),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(widget.product_name,style: TextStyle(fontSize: 25.0,color: Colors.black,fontWeight: FontWeight.bold),),
            SizedBox(
              height: 10.0,
            ),
            Text(widget.product_cost,style: TextStyle(fontSize: 15.0,color: Colors.black,fontWeight: FontWeight.bold),),
            SizedBox(
              height: 10.0,
            ),
            Text(widget.product_details,
              style: TextStyle(fontSize: 15.0,color: Colors.grey[500],fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 15.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40.0),
              child: Row(
                children:[
                  RaisedButton(
                    color: Colors.green,
                    child: Text('Fade In/Out Image',style: TextStyle(color: Colors.white),),
                    onPressed: (){
                      setState(() {
                        _visible =!_visible;
                      });
                    },
                  ),
                  SizedBox(
                    width: 30.0,
                  ),
                  RaisedButton(
                    color: Colors.green,
                    child: Text('Go Back',style: TextStyle(color: Colors.white),),
                    onPressed: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context)=>Products(),),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}