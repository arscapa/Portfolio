
//programmatically adds active class to Active navigation page
var activelink = function () {
    $('div.nav ul>li').click(function () {
      

        $(this).children('a').addClass('active');
    });
};


// Zoom animation for about me image links on default page
var AboutMeIMGAnimate = function () {
    $('div.About_Me_Links a img').mouseover(function () {

        $(this).animate({
            height: '+=10px',
            width: '+=10px',
        })
    });


    $('div.About_Me_Links a img').mouseout(function () {

        $(this).animate({
            height: '-=10px',
            width: '-=10px',
        })
    });
}



//loads lightbox when clicking corresponding image map hotspot on interests page

$(document).ready(function () {
    $('area.SelectSuspension').click(function () {
        $("#span1").click();
    });
});


$(document).ready(activelink)
$(document).ready(AboutMeIMGAnimate)





