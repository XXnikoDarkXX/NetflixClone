import 'package:flutter/material.dart';
import "./nav_bar_superior.dart";

class CartelPrincipal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[this.cabecera(), this.infoSerie()],
    );
  }

  Widget cabecera() {
    return Stack(children: <Widget>[
      Image.network(
        "https://staticuestudio.blob.core.windows.net/buhomag/2018/10/Cartel-de-Elite-en-Netflix-1.jpg",
        height: 350.0,
        fit: BoxFit.cover,
      ),
      Container(
        width: double.infinity,
        height: 350.0,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.center,
                end: Alignment.bottomCenter,
                colors: <Color>[Colors.black38, Colors.black])),
      ),
      SafeArea(child: NavBarSuperior())
    ]);
  }

  Widget infoSerie() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SizedBox(
          width: 6.0,
        ),
        Text("Telenovelesco",
            style: TextStyle(color: Colors.white, fontSize: 10.0)),
        SizedBox(
          width: 6.0,
        ),
        Icon(
          Icons.fiber_manual_record,
          color: Colors.red,
          size: 5.0,
        ),
        SizedBox(
          width: 6.0,
        ),
        Text("Suspenso insostenible",
            style: TextStyle(color: Colors.white, fontSize: 10.0)),
        SizedBox(
          width: 6.0,
        ),
        Icon(
          Icons.fiber_manual_record,
          color: Colors.red,
          size: 5.0,
        ),
        SizedBox(
          width: 6.0,
        ),
        Text("De suspenso",
            style: TextStyle(color: Colors.white, fontSize: 10.0)),
        SizedBox(
          width: 6.0,
        ),
        Icon(
          Icons.fiber_manual_record,
          color: Colors.red,
          size: 5.0,
        ),
        SizedBox(
          width: 6.0,
        ),
        Text("Adoles", style: TextStyle(color: Colors.white, fontSize: 10.0)),
      ],
    );
  }

  Widget botonera() {
    return Row(
      children: <Widget>[
        Icon(Icons.check, color: Colors.white),
        FlatButton.icon(
          onPressed: onPressed,
          icon: Icon(
            Icons.play_arrow,
            color: Colors.white,
          ),
        )
      ],
    );
  }
}
