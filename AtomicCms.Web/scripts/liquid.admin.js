
function deletePost(pageUrl)
{
    $.ajax(
    {
        type: 'POST',
        url: pageUrl,
        success: postDeleted
    });

    return false;
}

function postDeleted(data)
{
    window.location.href = window.location.href;
}
