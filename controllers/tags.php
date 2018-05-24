<?php namespace App;
class tags extends Controller
{
    function index()
    {
        $this->tags = get_all("SELECT * FROM tag");
    }
    function view()
    {
        $tag_id = $this->params[0];
        $this->posts = get_all( "SELECT * FROM post_tags NATURAL JOIN posts WHERE tag_id='$tag_id'");
    }
}