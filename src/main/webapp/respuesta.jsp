<%@ page import="java.util.Calendar" %>
<%@ page import="java.time.LocalDate" %>
<%@ page import="java.time.Period" %>
<%@ page import="java.time.YearMonth" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
<meta charset="UTF-8">
<title>E-commerce</title>
<link href="estilos/estilos1.css" rel="stylesheet" type="text/css">
</head>
<body>

<main>
<header>
       <h1>Service Computer</h1>
       <h2 class="destacado">Portabilidad para todos</h2>
       <h4 id="favorito">La portabilidad y potencia es un factor muy importante a la hora de trabajar</h4>
</header>
<nav>
		<a class= "active" href ="index.jsp">Inicio</a>
		<a class= "active" href ="consulta.jsp">Ver Productos</a>
       <a class= "active" href ="categoria.jsp">Buscar Por Categoria</a>
       <a class= "active" href ="login.jsp">Login</a>

</nav>

    <%
        String nombre = request.getParameter("txtNombre");
        String cedula = request.getParameter("txtCedula");
        String estado = request.getParameter("cmbEstado");
        String residencia = request.getParameter("rdResidencia");
        String foto = request.getParameter("fileFoto");
        String fechaNacimiento = request.getParameter("mFecha"); // formato YYYY-MM
        String color = request.getParameter("cColor");
        String email = request.getParameter("txtEmail");
        String clave = request.getParameter("txtClave");

        // Mostrar nombre
        out.println("Nombre: " + nombre + "<br>");

        // Mostrar cédula y provincia
        String codigoProvincia = cedula.substring(0, 2);
        String provincia = "";

        switch (codigoProvincia) {
            case "01": provincia = "Azuay"; break;
            case "02": provincia = "Bolívar"; break;
            case "03": provincia = "Cañar"; break;
            case "04": provincia = "Carchi"; break;
            case "05": provincia = "Cotopaxi"; break;
            case "06": provincia = "Chimborazo"; break;
            case "07": provincia = "El Oro"; break;
            case "08": provincia = "Esmeraldas"; break;
            case "09": provincia = "Guayas"; break;
            case "10": provincia = "Imbabura"; break;
            case "11": provincia = "Loja"; break;
            case "12": provincia = "Los Ríos"; break;
            case "13": provincia = "Manabí"; break;
            case "14": provincia = "Morona Santiago"; break;
            case "15": provincia = "Napo"; break;
            case "16": provincia = "Pastaza"; break;
            case "17": provincia = "Pichincha"; break;
            case "18": provincia = "Tungurahua"; break;
            case "19": provincia = "Zamora Chinchipe"; break;
            case "20": provincia = "Galápagos"; break;
            case "21": provincia = "Sucumbíos"; break;
            case "22": provincia = "Orellana"; break;
            case "23": provincia = "Santo Domingo de los Tsáchilas"; break;
            case "24": provincia = "Santa Elena"; break;
            case "30": provincia = "Exterior"; break;
            default: provincia = "Desconocida";
        }

        out.println("Cédula: " + cedula + "<br>");
        out.println("Provincia: " + provincia + "<br>");

        // Estado civil y residencia
        out.println("Estado Civil: " + estado + "<br>");
        out.println("Lugar de residencia: " + residencia + "<br>");

        // Foto
        out.println("El archivo seleccionado para foto del perfil es: <u>" + foto + "</u><br>");

        // Fecha de nacimiento y cálculo de edad
        if (fechaNacimiento != null && fechaNacimiento.contains("-")) {
            YearMonth ym = YearMonth.parse(fechaNacimiento);
            LocalDate fechaNac = ym.atDay(1);
            LocalDate hoy = LocalDate.now();
            int edad = Period.between(fechaNac, hoy).getYears();

            out.println("El año y mes de nacimiento son: <strong>" + fechaNacimiento + "</strong><br>");
            out.println("Edad actual: " + edad + " años<br>");
        }

        // Color favorito
        out.println("<font color=" + color + ">Este es tu color favorito</font><br>");

        // Email y clave
        out.println("Correo electrónico: " + email + "<br>");
        out.println("Clave: " + clave + "<br>");
    %>
</main>
</body>
</html>
