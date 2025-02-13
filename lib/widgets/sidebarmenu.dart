import 'package:flutter/material.dart';

class SideBarMenu extends StatelessWidget {
  const SideBarMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        canvasColor: Colors.transparent,
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.only(bottomRight: Radius.circular(40.0)),
        child: Drawer(
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [Color(0xFF4F14A0), Color(0xFF8066FF)],
              ),
            ),
            child: Column(
              children: <Widget>[
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: _crearBotones(),
                  ),
                ),
                _crearBoton('Cerrar Sesión'),
                const SizedBox(height: 10), // Espacio al final
              ],
            ),
          ),
        ),
      ),
    );
  }

  List<Widget> _crearBotones() {
    List<String> botones = [
      'Cuenta',
      'Notificaciones',
      'Privacidad',
      'FAQ',
      'Estadísticas',
      'Lenguaje',
      'Puntúanos',
      'Sobre nosotros'
    ];
    return botones.map((boton) => _crearBoton(boton)).toList();
  }

  Widget _crearBoton(String texto) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 0.2, color: Colors.grey[300]!),
        ),
      ),
      margin: const EdgeInsets.symmetric(horizontal: 30),
      child: Center(
        child: ListTile(
          title: Text(texto, style: const TextStyle(color: Colors.white)),
          onTap: () {},
        ),
      ),
    );
  }
}
