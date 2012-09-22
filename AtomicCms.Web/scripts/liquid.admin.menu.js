$(document).ready(function()
{
    $('#main_menu a').click(function()
    {
        var menuId = $(this).attr('id');
        var id = menuId.replace('parentMenu', '');
        $('.sec_menu').hide();
        $('#childMenu' + id).show();

        $('#main_menu a').removeClass('selected');
        $(this).addClass('selected');

        return false;
    });
});
