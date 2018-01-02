<?php

namespace App\Http\Controllers;
use App\Exceptions\ProductNotBelongsTouser;
use Symfony\Component\HttpFoundation\Response;   
use App\Http\Resources\Product\ProductResource;
use App\Http\Resources\Product\ProductCollection;
use App\Model\Product;
use Illuminate\Http\Request;
use App\Http\Requests\ProductRequest;;
use Auth;
class ProductController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */

    public function __construct()
    {
        $this->middleware('auth:api')->except('index','show');
    }

    public function index()
    {
      //return new ProductCollection(Product::all());

       // return ProductCollection::collection(Product::all());


        return ProductCollection::collection(Product::paginate(5));

       // return DB::table('products')->select('name','detail')->where('id',1)->get();
        //return Review::find(50)->products;
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(ProductRequest $request)
    {
       // return $request->all();

        $product = new Product;
        $product->name = $request->name;
        $product->detail = $request->detail;
        $product->price = $request->price;
        $product->stock = $request->stock;
        $product->discount = $request->dicount;
        $product->save();

        /*return response()->json([
            'data' => $product->toArray()
        ],201);*/
        return response([
            'data' => new ProductResource($product)
        ],Response::HTTP_CREATED);

    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Model\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function show(Product $product)
    {
        //return $product;
        return new ProductResource($product);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Model\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function edit(Product $product)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Model\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Product $product)
    {
        
            $this->ProductUserCheck($product);

        // $request['detail'] = $request->description;
        // unset($request['description']);

        $product->update($request->all());

        /*return response()->json([
            'data' => $product->toArray(),
        ]);*/
        return response([
            'data' => new ProductResource($product),
        ],Response::HTTP_CREATED);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Model\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function destroy(Product $product)
    {
       $this->ProductUserCheck($product);
       
         $product->delete();

        return response([null],Response::HTTP_NO_CONTENT);
    }

    public function ProductUserCheck($product)
    {
        if(Auth::id() !== $product->user_id)
            {
                throw new ProductNotBelongsTouser;
            }
    }
}
