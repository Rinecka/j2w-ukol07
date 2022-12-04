[#ftl]

<!DOCTYPE html>
<html lang="cs">
<head>
    <meta charset="UTF-8">
    <title>Můj blog</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" type="image/png" href="/images/favicon.png">
</head>
<body>
<h1>Na tomto blogu najdete tyto posty</h1>


[#list seznam as post]

    <a href="/post/${post.slug?no_esc}"> ${post.title}</a> <br>
    <p>${post.slug} </p>
    <p>${post.perex} </p>
    <p>${post.body} </p>
    <p>Autor:${post.author}</p>


[/#list]

</body>
</html>
