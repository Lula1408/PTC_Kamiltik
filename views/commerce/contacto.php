<?php
require_once('../../core/helpers/commerce.php');
Commerce::headerTemplate();
?>
<!-- Contenido principal del documento -->

<!-- Apartado tema -->
<div class="cabecera center">
    <h1 class="margin-0 padd-10 white-text">Contacto</h1>
</div>

<!-- Apartado tabs -->
<ul id="tabs-swipe-demo" class="tabs center">
    <li class="tab col s3"><a href="#test-swipe-1">Ayúdanos a mejorar</a></li>
    <li class="tab col s3"><a href="#test-swipe-2">Adquiere un franquicia</a></li>
    <li class="tab col s3"><a href="#test-swipe-3">Otros servicios</a></li>
</ul>   

<!-- Apartado primera parte (Ayudanós a mejorar) -->
<div id="test-swipe-1">
    <div class="row">
        <div class="col l12 AAM"></div>
        <div class="container col l6 s12 contacto">
            <div class="col l2"></div>
            <div class="col l8">
                <img src="../../resources/img/commerce/imagen.png" class="responsive-img contacto">
            </div>
            <div class="col l2"></div>
        </div>
        <div class="col s2"></div>
        <div class="container col l6 s8 inputs AAM">
            <div class="input-field col s12 l7">
                <input placeholder="kamaltik@mail.com" id="first_name" type="text" class="validate">
                <label for="first_name">Correo electronico</label>
            </div>
            <div class="input-field col s12 l7">
                <select>
                    <option value="" disabled selected>Motivo...</option>
                    <option value="1">Servicio</option>
                    <option value="2">Calidad</option>
                    <option value="3">Queja</option>
                </select>
                <label>Selecciona el motivo de contacto</label>
            </div>
            <div class="input-field col s12 l7">
                <input id="input_text" placeholder="Escribe tu mensaje aquí" type="text" data-length="10">
                <label for="input_text">Mensaje</label>
                <a class="waves-effect waves-light btn"><i class="material-icons right">play_arrow</i>Enviar mensaje</a>
            </div>
        </div>
        <div class="col s2"></div>
    </div>
</div>

<!-- Apartado adquiere una franquicia -->
<div id="test-swipe-2">
    <div class="row">
        <div class="col l6 s12">
            <div class="col l12 franquiciaimagen"></div>
            <div class="col l2 s2"></div>
            <div class="col l8 s8">
                <img src="../../resources/img/commerce/franquicia.jpg" class="responsive-img">
            </div>
            <div class="col l2 s2"></div>
        </div>
        <div class="col l6 s12">
        <div class="col l12 franquicia"></div>
            <div class="col s1"></div>
            <div class="card col 16 s10">
                <div class="card-content">
                    <span class="card-title">Emprende una franquicia</span>
                    <p>Una forma de iniciar tu emprendimiento es a través de una franquicia The Coffee Cup. Una franquicia es un modelo de negocio de éxito. Con el sistema de franquicia se cuenta con asesoramiento desde el primer día, una capacitación integral de 3 meses, donde se le enseña la operación y se le brinda un apoyo completo durante y después de la apertura. Entrenamos a todo el equipo de franquicias, baristas, junior, supervisores y encargas de tiendas, garantizando que los productos y el servicio sean estandarizado en todos los The Coffee Cup de la región.Emprendedor si deseas obtener más detalles sobre las franquicias The Coffee Cup, te invitamos a solicitar más información a: thecoffeecup@qualitygrains</p>
                </div>
            </div>
            <div class="col s1"></div>
        </div>
    </div>
</div>

<!-- Apartado otros servicios -->
<div id="test-swipe-3">
<div class="row">
        <div class="col l6 s12">
            <div class="col l12 OSimagen"></div>
            <div class="col l2 s2"></div>
            <div class="col l8 s8">
                <img src="../../resources/img/commerce/boda.jpg" class="responsive-img">
            </div>
            <div class="col l2 s2"></div>
        </div>
        <div class="col l6 s12">
        <div class="col l12 OS"></div>
            <div class="col s1"></div>
            <div class="card col 16 s10">
                <div class="card-content">
                    <span class="card-title">Una experiencia inolvidable</span>
                    <p>Un evento inolvidable merece el mejor sabor 100% salvadoreño. The Coffee Cup, te invitamos a solicitar más información a: thecoffeecup</p>
                </div>
            </div>
            <div class="col s1"></div>
        </div>
    </div>
</div>
<?php
Commerce::FooterTemplate();
?>