
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

    
        $('area.SelectEngine').click(function () {
            $("#span2").click();
        });


        $('area.SelectBody').click(function () {
            $("#span3").click();
        });


        $('area.SelectInterior').click(function () {
            $("#span4").click();
        });
});



//changes charger_main picture on interests page to highlighted section of car when hovering over it

$(document).ready(function () {
    $('area.SelectEngine').hover(function () {
        $("#Charger_Main").attr('src', 'Pictures/AutomotiveResto/MainPics/74dodgeEngine.png');
   
        })

    $('area.SelectSuspension').hover(function () {
        $("#Charger_Main").attr('src', 'Pictures/AutomotiveResto/MainPics/74dodgeSuspension.png');
   
           })

    $('area.SelectBody').hover(function () {
        $("#Charger_Main").attr('src', 'Pictures/AutomotiveResto/MainPics/74dodgeFender.png');
   
            })

    $('area.SelectInterior').hover(function () {
        $("#Charger_Main").attr('src', 'Pictures/AutomotiveResto/MainPics/74dodgeInterior.png');
  

        $('#Charger_Main').mouseout(function () {
            $("#Charger_Main").attr('src','Pictures/AutomotiveResto/MainPics/74dodge.png')
        })
            })

});


$(document).ready(function () {
    $('map').imageMapResize();
});




$(document).ready(activelink)
$(document).ready(AboutMeIMGAnimate)





