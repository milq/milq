'use strict';

document.addEventListener('DOMContentLoaded', htmlCargado, false);

function htmlCargado() {
  var registrar = document.getElementById('registrar');
  registrar.addEventListener('click', saludar, false);
}

function saludar() {
  var nombre = document.getElementById('nombreUsuario');
  alert('¡Bienvenido, ' + nombre.value + '!');
}
