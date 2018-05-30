<div class="container">
    <div class="well">
        <div class="media">
            <div class="media-body">
                <h4 class="media-heading"><?php echo $post ['post_subject'];?></h4>
                <p><?php echo $post['post_text'];?></p>
                <ul class="list-inline list-unstyled">
                    <li><span><i class="glyphicon glyphicon-calendar"></i><?php echo $post['post_created'];?></span></li>
                    <li></li>
                    <span><i class="glyphicon glyphicon-comment"></i> ? comments</span>
                </ul>
            </div>
        </div>
    </div>
</div>

<div class="container">
    <div class="row">
        <div class="media comment-box">
            <div class="media-body">

                <? foreach($comments as $comment): ?>
                    <h4 class="media-heading"><?=$comment['comment_subject']?></h4>
                    <p><?=$comment['comment_text']?></p>
                    <span class="badge badge-success">Commented on <?=$comment['comment_created']?></span> <span class="badge badge-success">Author: <?=$comment['comment_author']?></span>

                    <hr>
                <? endforeach ?>

            </div>
        </div>
    </div>
</div>