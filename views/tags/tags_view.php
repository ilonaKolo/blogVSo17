<div class="span8">
    <?php
    $post_count = count($posts);
    $i = 0;
    ?>
    <?while ($i < $post_count):?>
        <?php
/*        echo $post_count;
        echo '<pre>';
        print_r($posts[$i]);
        echo '</pre>';
        */?>

        <h1><a href="<?=BASE_URL?>posts/view/<?=$posts[$i]['post_id']?>"><?= $posts[$i]['post_subject']; ?></a></h1>
        <p><?= $posts[$i]['post_text']; ?></p>
        <div>
            <span class="badge badge-success">Posted <?= $posts[$i]['post_created']; ?></span><div class="pull-right"><? foreach ($tags[$posts[$i]['post_id']] as $tag): ?><a href="<?=BASE_URL?>tags/view/<?=$tag['tag_id']?>"><span class="label label-primary"><?=$tag['tag_name']?></span></a><?endforeach?></div>
        </div>

        <hr>
        <?php $i++;?>
    <?endwhile;?>
</div>