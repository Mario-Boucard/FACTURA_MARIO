<%-- 
    Document   : index
    Created on : 04-ago-2020, 13:40:25
    Author     : Boleteria
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> FACTURA</title>
    <h1>FACTURA</h1>
        <script>
            var idCliente;
            var nombreCliente;
            var telefonoCliente;
            var direccionCliente;
            var nombreProducto;
            var precio;
            var cantidad;
            var total;
            var subtotal;
            var p=0;
            var iva;
            var subtotalP=0;
            var fecha=new Date();
            var imprimir;
            var numero_factura=0;
            
            function generarFactura()
            {
                idCliente=document.getElementById("idCliente").value;
                nombreCliente=document.getElementById("nombreCliente").value;
                direccionCliente=document.getElementById("direccionCliente").value;
                telefonoCliente=document.getElementById("telefonoCliente").value;
                
                document.write("Fecha"+'&nbsp;'+fecha.getDate()+"/"+(fecha.getMonth()+1)+"/"+ fecha.getFullYear()+"*"+"*"+"*"+
                      "Hora"+'&nbsp;'+ fecha.getHours()+":"+fecha.getMinutes()+":"+fecha.getSeconds()+"<br>"+"<br>");
              document.write("---------------------------------------------------------------------------"+"<br>"+"<br>");
              
                document.write("Rut del Cliente:"+'&nbsp;'+idCliente+"<br>"+"<br>");
                document.write("Su  Nombre:"+'&nbsp;'+nombreCliente+"<br>"+"<br>");
                document.write("Su  Direccion:"+'&nbsp;'+direccionCliente+"<br>"+"<br>");
                document.write(" Su Telefono:"+'&nbsp;'+telefonoCliente+"<br>"+"<br>");
                document.write("___________________________________________________________________"+"<br>"+"<br>");
                
                for ( subtotal=0; 
                nombreProducto!="*" ; subtotal++){
                    
                    nombreProducto= prompt('Ingrese nombre del Producto');
                    document.write("Nombre Producto: " +'&nbsp;'+nombreProducto+'&nbsp;'+'&nbsp;');
                    
                    precio=parseFloat(prompt('Ingrese Precio'));
                    document.write("Precio: "+'&nbsp;'+precio+'&nbsp;'+'&nbsp;');
                    
                    
                  cantidad=parseFloat(prompt('Ingrese cantidad'));
                    document.write("cantidad: "+'&nbsp;'+cantidad+'&nbsp;'+'&nbsp;');
                    
                    nombreProducto=prompt('Ingrese"*" para terminar o cualquier tecla para continuar');
                    
                    subtotal=precio*cantidad;
                    subtotalP=subtotalP+ parseInt(subtotal);
                    iva=subtotalP*0.19;
                    total=subtotalP+iva;
                    
                    document.write("subtotal : "+'&nbsp;'+subtotal+"<br>"+"<br>"+"<br>");
                    
                    }
                    document.write("subtotal : "+'&nbsp;'+subtotalP+"<br>"+"<br>");
                    document.write("Iva 19% : "+'&nbsp;'+iva+"<br>"+"<br>");
                    document.write(" total : "+'&nbsp;'+ total+"<br>"+"<br>");
                    document.write("Gracias Comprar por nosotros!!!!"+"<br>"+"<br>");
                    document.write('<button onclick="window.Print">Imprimir Factura</button>');
                    
                }
                generarFactura()
            
        </script>
   
    </head>
    <body>
   <center>
        <br><br><br><br>
        <div class="form-group col-md-4" style="align-items: center">
            <h1>FACTURA</h1><br><br>
            <fieldset>
               
                <form >
                    <input type="text" name="idCliente" id="idCliente" placeholder="idCliente"/> <br>
                    <input type="text" name="nombreCliente" id="nombreCliente" placeholder="nombreCliente"/>   <br>
                    <input type="text" name="direccionCliente"  id="direccionCliente" placeholder="direccionCliente"/> <br>
                    <input type="text" name="telefonoCliente" id="telefonoCliente" placeholder="telefonoCliente">   <br><br>                           
                     <input class="btn btn-success col-md-8" type="button" name="Continuar" value="Continuar" onclick="generarFactura()"/>
                    
                </form>
            </fieldset>
        </div>            
    </center>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
    </body>
    </body>
    
</html>
