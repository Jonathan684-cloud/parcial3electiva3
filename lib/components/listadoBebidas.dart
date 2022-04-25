import 'package:flutter/material.dart';

List<Widget> listadoBebidas(data) {
  List<Widget> bebidas = [];
  for (var item in data) {
    bebidas.add(Card(
      elevation: 0,
      color: Color.fromRGBO(0, 0, 0, 0.122),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 10, bottom: 20),
            height: 150,
            width: 150,
            decoration: BoxDecoration(
                color: Colors.black45,
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                image: DecorationImage(
                  image: NetworkImage(item.strDrinkThumb),
                  fit: BoxFit.cover,
                ),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.blue,
                    offset: Offset(
                      0.0,
                      0.0,
                    ),
                    blurRadius: 10.0,
                    spreadRadius: 0.0,
                  ), //BoxShadow
                  BoxShadow(
                    color: Colors.white,
                    offset: Offset(0.0, 0.0),
                    blurRadius: 0.0,
                    spreadRadius: 0.0,
                  ),
                ]),
            child: Container(
              padding: const EdgeInsets.all(5),
              width: 150,
              child: Text(
                item.strDrink,
                style: const TextStyle(
                  backgroundColor: Colors.black87,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
  return bebidas;
}
