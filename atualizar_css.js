$('link').each(
    function(){
        var style = $(this);
        var href = style.attr('href');
        var n=1;
        setInterval(function(){
              n = n+1;
              style.attr('href', href + "?n="+n);
        }, 500)
    }
)