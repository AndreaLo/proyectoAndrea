@extends('layouts.master')

@section('content')

    <div class="row" style="margin-top:20px">

        <div class="col-md-offset-2 col-md-8">

            <h3 class="text-center">
                Crear producto
            </h3>
            <form action="{{ url('aboutus') }}" method="POST">
            <div class="form-group">
                {{method_field('PUT')}}
                <label for="categoria">Categoria</label>
                <input type="number" name="categoria" id="categoria" max="8" min="1" class="form-control">
            </div>

            <div class="form-group">
                <label for="precio">Precio</label>
                <input type="text" name="precio" id="precio" class="form-control">
            </div>

            <div class="form-group">
                <label for="urlImagen">Url imagen</label>
                <input type="text" name="urlImagen" id="urlImagen" class="form-control">
            </div>

            <div class="form-group">
                <label for="descripcion">Descripcion</label>
                <input type="text" name="descripcion" id="descripcion" class="form-control">
            </div>

            <div class="form-group">
                <label for="synopsis">Resumen</label>
                <textarea name="synopsis" id="synopsis" class="form-control" rows="3">{{$peli->synopsis}}</textarea>
            </div>

            <div class="form-group text-center">
                <button type="submit" class="btn btn-info" style="padding:8px 100px;margin-top:25px;">
                    Modificar ficha
                </button>
            </div>
            </form>

        </div>
    </div>
@stop