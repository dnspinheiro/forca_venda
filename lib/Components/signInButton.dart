import 'package:flutter/material.dart';

class SignIn extends StatelessWidget {
  SignIn();
  @override
  Widget build(BuildContext context) {
    return (new Container(
      width: 300.0,
      height: 55.0,
      margin: const EdgeInsets.only(left: 30.0, right: 30.0, top: 20.0),
      alignment: FractionalOffset.center,
      decoration: new BoxDecoration(
        color: Colors.redAccent,
        borderRadius: new BorderRadius.all(const Radius.circular(30.0)),
      ),
      child: new Text(
        "ENTRAR",
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
    ));
    // return (new Container(
    //   width: MediaQuery.of(context).size.width,
    //   margin: const EdgeInsets.only(left: 30.0, right: 30.0, top: 20.0),
    //   alignment: Alignment.center,
    //   child: new Row(
    //     children: <Widget>[
    //       new Expanded(
    //         child: new FlatButton(
    //           shape: new RoundedRectangleBorder(
    //             borderRadius: new BorderRadius.circular(30.0),
    //           ),
    //           color: Colors.redAccent,
    //           onPressed: () => {},
    //           child: new Container(
    //             padding: const EdgeInsets.symmetric(
    //               vertical: 20.0,
    //               horizontal: 20.0,
    //             ),
    //             child: new Row(
    //               mainAxisAlignment: MainAxisAlignment.center,
    //               children: <Widget>[
    //                 new Expanded(
    //                   child: Text(
    //                     'LOGIN',
    //                     textAlign: TextAlign.center,
    //                     style: TextStyle(
    //                         color: Colors.white, fontWeight: FontWeight.bold),
    //                   ),
    //                 ),
    //               ],
    //             ),
    //           ),
    //         ),
    //       ),
    //     ],
    //   ),
    // ));
  }
}
