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
        <a class="active" href="index.jsp">Inicio</a>
        <a class="active" href="consulta.jsp">Ver Productos</a>
        <a class="active" href="categoria.jsp">Buscar Por Categoria</a>
        <a class="active" href="login.jsp">Login</a>

    </nav>
    <div class="agrupar">

        <form action="respuesta.jsp" method="post">
            <table border="1">

                <tr>
                    <td>Nombre</td>
                    <td><input type="text" name="txtNombre"/></td>
                </tr>
                <tr>
                    <td>Cedula</td>
                    <td><input type="text" name="txtCedula" maxlenght="10"/></td>
                </tr>
                <tr>
                    <td>Estado Civil</td>
                    <td>
                        <select id="estado" name="cmbEstado">
                            <option value="Soltero">Soltero</option>
                            <option value="Casado">Casado</option>
                            <option value="Divorciado">Divorciado</option>
                            <option value="Viudo">Viudo</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>Lugar de Residencia</td>
                    <td>
                        <input type="radio" id="residencia" name="rdResidencia" value="Sur"/>Sur<br/>
                        <input type="radio" id="residencia" name="rdResidencia" value="Norte"/>Norte<br/>
                        <input type="radio" id="residencia" name="rdResidencia" value="Centro"/>Centro
                    </td>
                </tr>
                <tr>
                    <td><input type="file" id="foto" name="fileFoto" accept=".jpg, .jpeg, .png"/></td>
                </tr>
                <tr>
                    <td>Mes y A�o de Nacimiento</td>
                    <td><input type="month" id="fecha" name="mFecha"/></td>
                </tr>
                <tr>
                    <td>Color Favorito</td>
                    <td><input type="color" id="color" name="cColor"/></td>
                </tr>
                <tr>
                    <td>Correo</td>
                    <td><input type="email" id="email" name="txtEmail"/></td>
                </tr>
                <tr>
                    <td>Clave</td>
                    <td><input type="password" id="clave" name="txtClave"/></td>
                </tr>
                <tr>
                    <td><input type="submit"/></td>
                    <td><input type="reset"/></td>
                </tr>
            </table>
        </form>
    </div>

    <footer>
        <ul>
            <li><a href="www.facebook.com">
                <img src="iconos/facebook.png" width="60" height="60" alt="imagen facebook"/></a></li>

            <li><a href="www.instagram.com">
                <img src="iconos/instagram.png" width="60" height="60" alt="imagen facebook"/></a></li>

            <li><a href="www.tiktok.com">
                <img src="iconos/tiktok.png" width="60" height="60" alt="imagen facebook"/></a></li>
        </ul>
    </footer>

</main>
</body>
</html>