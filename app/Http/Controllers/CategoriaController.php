<?php

namespace App\Http\Controllers;


use App\Categoria;
use App\Producto;

class CategoriaController
{
    public function getNovedades()
    {
        $productos = Producto::where('novedad',true)->get();
        return view('home', array ('productos' => $productos), array ('productos' => $productos));
    }
    public function getCategorias(){
        $categorias = Categoria::all();
        return view('categorias')->with('categorias', $categorias);
    }
    public function getProductoPorCatgoria($categoria_id)
    {
        $productos = Producto::where('categoria_id', $categoria_id)->get();
        return view('listadoCat', array('productos'=> $productos),array('productos'=>$productos));
    }
    public function getFicha($id){
        $producto = Producto::find($id);
        return view('ficha', array('producto'=>$producto));
    }
    public function getAboutus(){
        return view('aboutus');
    }
}