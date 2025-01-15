<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use App\Models\Post;
use Gate;
class PostController extends Controller
{
    public function index(Request $request){
        //$students=Student::paginate(5);
        $search = $request->input('search');
        /*$students=Student::where('name', 'like', "%{$search}%")
        ->paginate(10)
        ->appends(['search' => $search]);*/
        $posts = Post::query()
        ->when($search, function ($query, $search) {
            return $query->where('title', 'like', "%{$search}%")
                         ->orWhere('content', 'like', "%{$search}%");
        })
        ->paginate(5)
        ->appends(['search' => $search]);
        return view('post',compact('posts','search'));
    }


    public function view($id)
    {
        $post=Post::findOrFail($id);
        Gate::authorize('view', $post);
        //dd('success');
        return view('view',compact('post'));
    }
}
