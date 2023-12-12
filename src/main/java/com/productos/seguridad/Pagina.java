package com.productos.seguridad;

public class Pagina {
    
    public String mostrarMenu(int perfil) {
        String menu = "";
        
        switch (perfil) {
            case 1:
                // Menú para el perfil 1
                menu = "<ul>" +
                        "<li><a href='#'>Opción 1</a></li>" +
                        "<li><a href='registroTarjeta.jsp'>Registro</a></li>" +
                        "<li><a href='comprar.jsp'>Comprar</a></li>" + // Nueva opción para comprar
                        "</ul>";
                break;
            case 2:
                // Menú para el perfil 2
                menu = "<ul>" +
                        "<li><a href='#'>Otra opción 1</a></li>" +
                        "<li><a href='registroTarjeta.jsp'>Registro</a></li>" +
                        "<li><a href='comprar.jsp'>Comprar</a></li>" + // Nueva opción para comprar
                        "</ul>";
                break;
            // Agrega más casos según sea necesario para otros perfiles
            default:
                // Menú predeterminado para otros perfiles
                menu = "<p>Menú no disponible para este perfil</p>";
                break;
        }
        
        return menu;
    }
}
