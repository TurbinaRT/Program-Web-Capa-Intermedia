function validar() {
var nombre, apellidoP, apellidoM, correo, pass, sexo, alumno, instructor, fechaNac;
nombre = deocument.getElementById('nombre-h').value;
apellidoP = deocument.getElementById('Ap-pat-h').value;
apellidoM = deocument.getElementById("Ap-mat-h").value;
correo = deocument.getElementById("email-h").value;
pass = deocument.getElementById("password-h").value;
sexo = deocument.getElementById("genero-h").value;
instructor = deocument.getElementById("Instructor").value;
alumno = deocument.getElementById("Alumno").value;
fechaNac = deocument.getElementById("nombre-h").value;

    //Condiciones de llenado de campos
    if(nombre === "") {
        alert ("El campo nombre está vacío");
        return false;
    }
    else if(apellidoP === "") {
        alert ("El campo apellido paterno está vacío");
        return false;
    }
    else if(apellidoM === "") {
        alert ("El campo apellido materno está vacío");
        return false;
    }
    else if(correo === "") {
        alert ("El campo correo electrónico está vacío");
        return false;
    }
    else if(pass === "") {
        alert ("El campo contraseña está vacío");
        return false;
    }
    else if(sexo === "") {
        alert ("El campo género está vacío");
        return false;
    }
    else if(fechaNac === "") {
        alert ("El campo fecha de nacimiento está vacío");
        return false;
    }
    
    //Condiciones de longitud de caracteres
    else if(nombre.length > 40) {
        alert ("El campo nombre debe ser menor o igual a 40 caracteres");
        return false;
    }
    else if(apellidoP.length > 50) {
        alert ("El campo apellido paterno debe ser menor o igual a 50 caracteres");
        return false;
    }
    else if(apellidoM.length > 50) {
        alert ("El campo apellido materno debe ser menor o igual a 50 caracteres");
        return false;
    }
    else if(correo.length > 70) {
        alert ("El campo correo electrónico debe ser menor o igual a 70 caracteres");
        return false;
    }
    else if(pass.length > 30) {
        alert ("El campo contraseña debe ser menor o igual a 30 caracteres");
        return false;
    }
}