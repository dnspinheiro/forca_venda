import 'package:flutter/material.dart';

Widget homePage(context) {
  return new Container(
    height: MediaQuery.of(context).size.height,
    decoration: BoxDecoration(
      color: Colors.redAccent,
      image: DecorationImage(
        colorFilter: new ColorFilter.mode(
            Colors.black.withOpacity(0.1), BlendMode.dstATop),
        image: AssetImage('assets/logo_totvs.png'),
        fit: BoxFit.cover,
      ),
    ),
    child: new Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(top: 250.0),
          child: Center(
            child: Icon(
              Icons.shopping_cart,
              color: Colors.white,
              size: 40.0,
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: 20.0),
          child: new Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Força",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              Text(
                "Venda",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        new Container(
          width: MediaQuery.of(context).size.width,
          margin: const EdgeInsets.only(left: 30.0, right: 30.0, top: 150.0),
          alignment: Alignment.center,
          child: new Row(
            children: <Widget>[
              new Expanded(
                child: new OutlineButton(
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(30.0)),
                  color: Colors.redAccent,
                  highlightedBorderColor: Colors.white,
                  onPressed: () => gotoSignup(),
                  child: new Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 20.0,
                      horizontal: 20.0,
                    ),
                    child: new Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        new Expanded(
                          child: Text(
                            "Assinar",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        new Container(
          width: MediaQuery.of(context).size.width,
          margin: const EdgeInsets.only(left: 30.0, right: 30.0, top: 30.0),
          alignment: Alignment.center,
          child: new Row(
            children: <Widget>[
              new Expanded(
                child: new FlatButton(
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(30.0)),
                  color: Colors.white,
                  onPressed: () => gotoLogin(),
                  child: new Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 20.0,
                      horizontal: 20.0,
                    ),
                    child: new Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        new Expanded(
                          child: Text(
                            "LOGIN",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.redAccent,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

gotoLogin() {
  //controller_0To1.forward(from: 0.0);
  _controller.animateToPage(
    0,
    duration: Duration(milliseconds: 800),
    curve: Curves.bounceOut,
  );
}

gotoSignup() {
  //controller_minus1To0.reverse(from: 0.0);
  _controller.animateToPage(
    2,
    duration: Duration(milliseconds: 800),
    curve: Curves.bounceOut,
  );
}

PageController _controller =
    new PageController(initialPage: 1, viewportFraction: 1.0);
