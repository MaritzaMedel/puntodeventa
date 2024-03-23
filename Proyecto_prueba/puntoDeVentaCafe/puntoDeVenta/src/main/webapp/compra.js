var comprados = [];
var precios = [];
var nombres = [];
var tickets=[];

function comprar(lista) {
    let codigoValor = document.getElementById("codigo").value;
    let mensaje = document.getElementById("mensaje");
    
    // Verifica si el código no está vacío
    if (codigoValor !== "") {
        // Verifica si el código existe en la lista de productos
        let productoEncontrado = false;
        for (let i = 0; i < lista.length; i++) {
            if (lista[i].codigo === codigoValor) {
                productoEncontrado = true;
                let cantidad = document.getElementById("cantidad");
                let articulos = parseInt(cantidad.innerText);
                cantidad.innerText = articulos + 1;
                comprados.push(codigoValor); 
                precios.push(lista[i].precio);
                nombres.push(lista[i].nombre);
            }
        }

        // Si el producto no se encontró en la lista
        if (!productoEncontrado) {
            mensaje.innerHTML = "No existe un artículo con ese código.";
        } else {
            mensaje.innerHTML = " "; 
        }
    } else {
        mensaje.innerHTML = "Aún no has agregado ningún producto al carrito.";
    }

}

function verCompra() {
    let pago = 0;

    let listaCompras = document.getElementById("listaCompras");
    let total = document.getElementById("total");

    // Limpiar el contenido anterior del ticket
    listaCompras.innerHTML = "";
    total.innerHTML = "";
    let div=document.getElementById("ticket");
    let parr=document.getElementById("parr");

    div.style.display="block";
    parr.style.display="block";
    // Agregar los elementos de la compra al ticket
    for (let i = 0; i < comprados.length; i++) {
        let articulo = document.createElement("li");
        articulo.innerText = comprados[i] + "                 " + nombres[i] + "                        " + "$" + precios[i];
        pago += precios[i];
        listaCompras.appendChild(articulo);
    }

    let monto = document.createElement("li");
    monto.innerText = "Total a pagar:   $" + pago;
    total.appendChild(monto);
    let ticket=document.getElementById("ticket");
    tickets.push(ticket);   

    // Habilitar el botón para finalizar la compra
    let boton = document.getElementById("terminar");
    let btnComprar=document.getElementById("comprar");
    boton.disabled = false;
    btnComprar.disabled=true;
    
}

function finalizarCompra(){
    // Limpiar el contenido del ticket
    let listaCompras = document.getElementById("listaCompras");
    listaCompras.innerHTML = "";
    let parrafo=document.getElementById("parr");
    parrafo.innerHTML="TICKET DE COMPRA <br> COFFEE BREAK";

    let total = document.getElementById("total");
    total.innerHTML = "";
    // Notificar al usuario que la compra ha sido terminada
    alert("La compra ha sido terminada. ¡Gracias!");
    let ticket=document.getElementById("ticket");
    ticket.style.display="none";
    let btnComprar=document.getElementById("comprar");
    let boton = document.getElementById("terminar");
    let contador=document.getElementById("cantidad");
    btnComprar.disabled=false;
    boton.disabled=true;
    contador.innerHTML=0;
    
}

function verVentas(){
    let ventas=document.getElementById("ventas");
    for(i=0;i<tickets.length;i++){
        ventas.innerText=tickets[i].innerText;
    }
}

