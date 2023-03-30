function validaciones(){
    validar();
    ChecarPass();
}

    var nombre = document.getElementById("Nombre_h");
    var apellidoP = document.getElementById("Ap-pat-h");
    var apellidoM = document.getElementById("Ap-mat-h");
    var usuario = document.getElementById('username_h');
    var correo = document.getElementById("email-h");
    var pass = document.getElementById("password-h");
    var sexo = document.getElementById("genero-h");
    var instructor = document.getElementById("Instructor");
    var alumno = document.getElementById("Alumno");
    var fechaNac = document.getElementById("Fecha_Na");
    var form = document.getElementById("form");
    
    function validar() {
    
        //Condiciones de llenado de campos
        if(nombre.value === "" || nombre.value === null) {
            alert ("El campo nombre está vacío");
           
        }

        else if(apellidoP.value === "" || apellidoP.value === null) {
            alert ("El campo apellido paterno está vacío");
           
        }
        else if(apellidoM.value === "" || apellidoM.value === null) {
            alert ("El campo apellido materno está vacío");
           
        }

        if (usuario.value === "" || usuario.value === null)
        {
             alert ("El campo usuario está vacío");
            
        }


        else if(correo.value === "" || correo.value === null) {
            alert ("El campo correo electrónico está vacío");
            
          
        }
        else if(pass.value === "" || pass.value === null) {
            alert ("El campo contraseña está vacío");
             
         
        }
        else if(sexo.value === "" || sexo.value === null) {
            alert ("El campo género está vacío");
           
            
        }
        else if(fechaNac.value === "" || fechaNac.value === null) {
            alert ("El campo fecha de nacimiento está vacío");
         
            
        }
        
        //Condiciones de longitud de caracteres
        else if(nombre.value.length > 35 ) {
            alert ("El campo nombre debe ser menor o igual a 35 caracteres");
            
        }
        else if(apellidoP.value.length > 50) {
            alert ("El campo apellido paterno debe ser menor o igual a 50 caracteres");
            
        }
        else if(apellidoM.value.length > 50) {
            alert ("El campo apellido materno debe ser menor o igual a 50 caracteres");
            
        }
        else if(correo.value.length > 70) {
            alert ("El campo correo electrónico debe ser menor o igual a 70 caracteres");
            
        }
        else if(pass.value.length > 20) {
            alert ("El campo contraseña debe ser menor o igual a 20 caracteres");
        } else if (pass.value.length <7)
        alert ("La contraseña es demasiado pequeña, mínimo 8 caracteres");


        function ChecarPass()
    {
        let validPassword = /(?=.*[a-z])(?=.*[A-Z])(?=.*[0,9])(?=.*[!@#\$%\^&\*])(?=-{8,})/;
        let passwordCheck = document.querySelector('#password-h').value;
    }

        return false;

    }

    //Expresión regular para validar una contraseña en javascript. 
    //La contraseña debe tener una letra mayúscula, una letra minúscula, un número y un caracter especial.
    function ChecarPass()
    {
        let validPassword = /(?=.*[a-z])(?=.*[A-Z])(?=.*[0,9])(?=.*[!@#\$%\^&\*])(?=-{8,})/;
        let passwordCheck = document.querySelector('#password-h').value;
        
        if (validPassword.test(passwordCheck))
        {
                alert("Le sabes");
        } else 
        alert("No le sobas");
        //alert("La contraseña debe tener una letra mayúscula, una letra minúscula, un número y un caracter especial.");
    }