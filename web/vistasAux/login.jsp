<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="utf-8"> <!-- paa que acepte caracteres especiales -->
        <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0"> <!-- para que se adapte a cualquier dispositivo -->
        <title>Sycomt3 - Ingresar</title><!-- Es el titulo-->
        <link rel="shortcut icon" href="img/isologo-final2.png"><!-- El icono de la pestaña dentro del navegador -->
        <meta content="" name="keywords">
        <meta content="" name="description">



        <%@include file="../SI/vistas/dependencias/dependenciasCss.jsp"%>
        <link href="css/estilosLogin.css" rel="stylesheet">
    </head>

    <body>
        <!-- **********************************************************************************************************************************************************
            Formulario de ingreso
            *********************************************************************************************************************************************************** -->
        <div id="login-page">
            <div class="container">
                <!--                formulario de inicio de sesión-->
                <form class="form-login" id="formLogin" action="../loginUser" method="post" enctype="multipart/form-data">
                    <h2 id="accerdert" class="form-login-heading">Acceder</h2>
                    <div class="login-wrap">
                        <input name="userAccess"id="userAccess" type="text" class="form-control" placeholder="Usuario" autofocus>
                        <br>
                        <input name="paswordAccess"id="paswordAccess" type="password" class="form-control" placeholder="Contraseña">

                        <input  class="remember-me" type="checkbox" value="remember-me">
                        <label id="recuerdame"for="[recuerdame]">Recuerdame</label>
                        <span class="pull-right">
                            <label class="checkbox">
                                <a id="olvide" data-toggle="modal" href="login.html#myModal"> Olvide mi Contraseña?</a>
                        </span>
                        </label>
                        <button style="margin-bottom: 25px;"id="buttonLogin" type="submit" class="btn btn-theme btn-block botonIngreso" href="#" ><i class="fa fa-lock"></i> INGRESAR</button>
                        <button onclick="translateEnglish()"id="buttonTranslateEn"class="btn btnAgregar" type="button">EN</button>
                        <button style="float: right;"onclick="translateSpanish()"id="buttonTranslateEs"class="btn btnAgregar" type="button">ES</button>
                        <hr>
                        <div id="registration"class="registration">
                            <h5 id="aunno">Aún no tienes una cuenta?<br/></h5>
                            <a id="crear" class="" href="" data-toggle="modal" data-target="#modalRegisterCustomer">
                                Crea una cuenta
                            </a>
                        </div>

                    </div>
                    <!-- Modal -->
                    <div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" id="myModal" class="modal fade">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                    <h4 id="Recuperar" class="modal-title">Recuperar Contraseña?</h4>
                                </div>
                                <div class="modal-body">
                                    <p id="ingresesu">Ingrese su dirección de correo electrónico a continuación para restablecer su contraseña.</p>
                                    <input id="inputcorreo"type="text" name="email" placeholder="Correo" autocomplete="off" class="form-control placeholder-no-fix">
                                </div>
                                <div class="modal-footer">
                                    <button id="btncancelar"data-dismiss="modal" class="btn btn-default" type="button">Cancelar</button>
                                    <button id="btnenviar"class="btn btn-theme" type="button">Enviar</button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- modal -->
                </form>
            </div>
            <!--            inicio del modal que solicita datos para el registro de clientes-->
            <div class="modal fade col-md-12" id="modalRegisterCustomer" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
                    <div class="modal-content modal-lg">
                        <div class="modal-header">
                            <h5 class="modal-title" id="modalRegisterCustomerTitle">Registro Usuario</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <!--modal que solicita los datos necesarios para registrar un cliente-->
                        <div class="modal-body">
                            <form enctype="multipart/form-data" style="margin-top: 30px;"id="frmRegisterUserCustomer" class="form-horizontal col-sm-12 text-center" >
                                <legend>Datos de contacto</legend>
                                <div class="form-group text-center" >
                                    <div class="col-sm-6">
                                        <label class="col-md-9 text-left" for="tipoIdentificacionCliente">Tipo Identificación *</label>
                                        <select id="tipoIdentificacionCliente" name="tipoIdentificacionCliente" class="form-control">
                                            <option value="">Seleccione una Opción</option>
                                            <option value="C.C">C.C (Cédula de Ciudadanía)</option>
                                            <option value="C.E">C.E (Cédula de Extranjería)</option>
                                            <option value="Nit">NIT</option>
                                        </select>
                                    </div>
                                    <div class="col-sm-6">
                                        <label class="col-md-9 text-left" for="identificacionCliente">Identificación *</label>  
                                        <input style="margin-bottom: 7px;"id="identificacionCliente" name="identificacionCliente" type="text" placeholder="Numero de Identificación " class="form-control input-md" required="">
                                    </div>
                                    <div class="col-sm-6">
                                        <label class="col-md-9 text-left" for="firstName">Nombre *</label>    
                                        <input style="margin-bottom: 7px;"id="firstName" name="firstName" type="text" placeholder="Primer Nombre" class="form-control input-md" required="">
                                    </div>
                                    <div class="col-sm-6">
                                        <label class="col-md-9 text-left" for="secondName">Nombre</label>
                                        <input style="margin-bottom: 7px;"id="secondName" name="secondName" type="text" placeholder="Segundo Nombre" class="form-control input-md" required="">
                                    </div>
                                    <div class="col-sm-6">
                                        <label class="col-md-9 text-left" for="firstLastName">Apellido *</label>  
                                        <input style="margin-bottom: 7px;"id="firstLastName" name="firstLastName" type="text" placeholder="Primer Apellido" class="form-control input-md" required="">
                                    </div>
                                    <div class="col-sm-6">
                                        <label class="col-md-9 text-left" for="secondLastName">Apellido *</label> 
                                        <input style="margin-bottom: 7px;"id="secondLastName" name="secondLastName" type="text" placeholder="Segundo Apellido" class="form-control input-md" required="">
                                    </div>
                                    <div class="col-sm-6">
                                        <label class="col-md-9 text-left" for="email">E-Mail *</label> 
                                        <input style="margin-bottom: 7px;"id="email" name="email" type="text" placeholder="Correo Electrónico" class="form-control input-md" required="">
                                    </div>
                                    <div class="col-sm-6">
                                        <label class="col-md-9 text-left" for="numCellPhone">Celular *</label>  
                                        <input style="margin-bottom: 7px;"id="numCellPhone" name="numCellPhone" type="text" placeholder="Numero de Celular" class="form-control input-md" required="">
                                    </div>
                                    <div class="col-sm-6">
                                        <label class="col-md-9 text-left" for="numLandLine">Fijo *</label>  
                                        <input style="margin-bottom: 7px;"id="numLandLine" name="numLandLine" type="text" placeholder="Numero de Teléfono Fijo " class="form-control input-md" required="">
                                    </div>
                                    <div class="col-sm-6">
                                        <label class="col-md-9 text-left" for="address">Dirección *</label>  
                                        <input style="margin-bottom: 7px;"id="address" name="address" type="text" placeholder="Dirección" class="form-control input-md" required="">
                                    </div>
                                    <div class="col-sm-6">
                                        <label class="col-md-9 text-left" for="localidadCliente">Localidad *</label>
                                        <select data-select-search="true"id="localidadCliente" name="localidadCliente" class="form-control" >
                                            <option value="">Seleccione una opción</option>
                                            <option value="Antonio Nariño">Antonio Nariño</option>
                                            <option value="Barrios Unidos">Barrios Unidos</option>
                                            <option value="Bosa">Bosa</option>
                                            <option value="La Candelaria">La Candelaria</option>
                                            <option value="Chapinero">Chapinero</option>
                                            <option value="Engativá">Engativá</option>
                                            <option value="Fontibón">Fontibón</option>
                                            <option value="Kennedy">Kennedy</option>
                                            <option value="Los Mártires">Los Mártires</option>
                                            <option value="Puente Aranda">Puente Aranda</option>
                                            <option value="Rafael Uribe Uribe">Rafael Uribe Uribe</option>
                                            <option value="San Cristobal">San Cristobal</option>
                                            <option value="Santa Fe">Santa Fe</option>
                                            <option value="Suba">Suba</option>
                                            <option value="Teusaquillo">Teusaquillo</option>
                                            <option value="Tunjuelito">Tunjuelito</option>
                                            <option value="Usaquén">Usaquén</option>
                                            <option value="Usme">Usme</option>

                                        </select>
                                    </div>
                                    <div class="col-sm-6">
                                        <label class="col-md-9 text-left" for="barrioCliente">Barrio *</label>
                                        <select disabled id="barrioCliente" name="barrioCliente" class="form-control">
                                            <option value="">Seleccione una opción</option>

                                        </select>
                                    </div>

                                    <div class="col-sm-12">
                                        <label class="col-md-12" for="detailsAddress">Detalles *</label>
                                        <textarea Rows="3"placeholder="En este campo por favor ingrese todos los detalles de la dirección ingresada tales como barrio nombre de conjunto y alguna característica en especial para ubicar la dirección."style="margin-bottom: 7px;"class="form-control" id="detailsAddress" name="detailsAddress"></textarea>
                                    </div>

                                </div>
                                <legend>Datos de acceso al sistema</legend>
                                <div class="form-group text-center" >
                                    <div class="col-sm-6">
                                        <label class="col-md-9 text-left" for="username">Usuario *</label>  
                                        <input style="margin-bottom: 7px;"id="username" name="username" type="text" placeholder="Usuario de Acceso " class="form-control input-md" required="">
                                    </div>
                                    <div class="col-sm-6">
                                        <label class="col-md-9 text-left" for="password">Contraseña *</label>  
                                        <input tooltip="sdf" id="password" name="password" type="text" placeholder="Contraseña de Acceso" class="form-control input-md" required="">

                                    </div>
                                    <div class="col-sm-6">
                                        <label class="col-md-9 text-left" for="passwordConfirm">Confirmar Contraseña *</label>  
                                        <input tooltip="sdf" id="passwordConfirm" name="passwordConfirm" type="text" placeholder="Confirme su Contraseña de Acceso" class="form-control input-md" required="">

                                    </div>
                                </div>
                                <div class="col-sm-12" style="margin-top: 30px;">
                                    <button id="botonCerrar"type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
                                    <button id="botonVaciar" type="reset" name="botonVaciar" class="colorbtn btn btn-primary">Vaciar</button>
                                    <button id="buttonRegisterCustomerOP" type="submit" name="buttonRegisterCustomer" class="buttonRegisterCustomer colorbtn btn btn-primary">Aceptar</button>
                                </div>
                            </form>
                        </div>
                        <div class="modal-footer">

                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- archivos JavaScript -->

        <%@include file="../SI/vistas/dependencias/dependenciasJS.jsp"%>
        <script src="Js/Login.js"></script>


    </body>

</html>
