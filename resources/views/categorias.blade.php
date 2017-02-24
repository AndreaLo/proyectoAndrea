@extends('layouts.master')

@section('content')

        <?php
            $count=1;
        ?>

        @foreach( $categorias as $key => $categoria )
            <?php
                if($count==1 || $count%4==0){
                    echo '<div class="row center-block">';
                }
            ?>

            <div class="col-sm-3" >
                <a href="{{ url('/categorias/'. $categoria->id ) }}">
                    <img src="{{$categoria->imagen}}" style="width:100%"/>
                    <h4 style="text-align: center">
                        {{$categoria->nombre}}
                    </h4>
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