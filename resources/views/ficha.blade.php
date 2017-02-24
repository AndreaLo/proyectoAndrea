@extends('layouts.master')

@section('content')
    <br><br>
    <div class="row">
        <div class="col-sm-2"></div>
        <div class="col-sm-4" >
            <img src="{{$producto->imagen}}" style="width:100%"/>
        </div>
        <div class="col-sm-4" >
                <p style="text-align: justify"><b>Descripción: </b>{{$producto->descripcion}}</p>
                <p><b>Precio: </b>{{$producto->precio}} €</p>
            <form>
                <div class="form-group">
            <?php
                if($producto->categoria_id!=2 && $producto->categoria_id!=8){
                    echo '<p><b>Talla:</b></p>';
                        echo '<select class="form-control" id="talla" style="width:40%">';

                            if($producto->categoria_id==1 || $producto->categoria_id==4){
                                echo '<option>36</option>';
                                echo '<option>37</option>';
                                echo '<option>38</option>';
                                echo '<option>39</option>';
                                echo '<option>40</option>';
                            }
                            else{
                                echo '<option>XS</option>';
                                echo '<option>S</option>';
                                echo '<option>M</option>';
                                echo '<option>L</option>';
                                echo '<option>XL</option>';
                            }
                    echo '</select><br>';
                }
            ?>
                <p><b>Cantidad:</b></p>
                <input type="number" min="1" max="10" style="width:40%"  value="1"><br><br>
                    <p><button type="button" class="btn btn-success" style="width:40%">Comprar</button> &nbsp<button type="button" class="btn btn-warning" style="width:40%">Favoritos</button></p>

                </div>
            </form>
        </div>
        <div class="col-sm-2"></div>
    </div>

@stop