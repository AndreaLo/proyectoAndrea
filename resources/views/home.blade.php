@extends('layouts.master')

@section('content')
    <h3>Novedades</h3>
    <?php
    $count=1;
    ?>

    @foreach( $productos as $key => $producto )
        <?php
        if($count==1 || $count%4==0){
            echo '<div class="row center-block">';
        }
        ?>

        <div class="col-sm-3 center-block" >
            <a href="{{ url('/producto/'. $producto->id ) }}">


                <img src="{{$producto->imagen}}" style="width:100%"/>
                <p style="text-align: center">
                    {{$producto->precio}} €
                </p>
            </a>
        </div>

        <?php
        if($count%4==0){
            echo '</div>';
        }
        $count++;
        ?>
    @endforeach

@stop