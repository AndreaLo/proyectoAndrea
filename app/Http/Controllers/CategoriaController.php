<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

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

    public function  crearProd(Request $request)
    {
        $prod = new Producto();
        if( $request->has("idcategoria") && $request->has("precio") &&
            $request->has("urlImagen") && $request->has("descripcion")
        ) {
            $prod->categoria_id = $request->input("idcategoria");
            $prod->precio = $request->input("precio");
            $prod->imagen = $request->input("urlImagen");
            $prod->descripcion = $request->input("descripcion");
            $prod->save();
            return view('aboutus');
        }
        else return view('aboutus');
    }
}