'use strict'

document.addEventListener('DOMContentLoaded', ready, false);

function ready() {
  var register = document.getElementById('register')
  register.addEventListener('click', welcome, false)
}

function welcome() {
  var name = document.getElementById('username')
  alert('Welcome, ' + name.value + '!')
}
