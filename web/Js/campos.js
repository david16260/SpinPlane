function validacion() {
        valor = document.getElementById("campo").value;
if( valor == null || valor.length == 0 || /^\s+$/.test(valor) ) {
  return false;
}
    alert('[ERROR] El campo debe tener un valor de...');
  }

