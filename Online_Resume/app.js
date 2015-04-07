/// <reference path="C:\Users\HawksFan\Documents\Visual Studio 2013\Projects\Online_Resume\Online_Resume\Scripts/jwplayer/jwplayer.js" />

//programmatically adds active class to Active navigation page
var str = location.href.toLowerCase();
$("#nav li a").each(function () {
    if (str.indexOf($(this).attr("href").toLowerCase()) > -1) {
        $("li.current-menu-item").removeClass("current-menu-item");
        $(this).parent().addClass("current-menu-item");
    }
});
$("li.current-menu-item").parents().each(function () {
    if ($(this).is("li")) {
        $(this).addClass("current-menu-item");
    }
});



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
$(document).ready(AboutMeIMGAnimate)




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


//load fancybox
$(".fancybox").click(function() {
    $(".fancybox").fancybox({
        type: "iframe",
    });
});



//image map resizer--> changes coordinates of image map when window is resized

$(document).ready(function () {
    $('map').imageMapResize();
});






//scrollmagic functionality


    // Init Controller
    var controller = new ScrollMagic.Controller();

    // Create Animation for 0.5s
    var tween = TweenMax.to('#chargerinfo', 1, {
        backgroundColor: 'black',
    });



    //Create Scene
    var scene = new ScrollMagic.Scene({
        triggerElement: '#trigger1', // starting scene, when reaching this element
        offset: 200,
    })


// Add Scene to ScrollMagic Controller
.setTween(tween)
.addTo(controller)



//scrollmagic--change background back to normal


    // Init Controller
    var controller2 = new ScrollMagic.Controller();

    // Create Animation for 0.5s
    var tween2 = TweenMax.to('#chargerinfo', 1, {
        backgroundColor: '#efefef',
    });

    //Create Scene
    var scene2 = new ScrollMagic.Scene({
        triggerElement: '#trigger2', // starting scene, when reaching this element
    })


// Add Scene to ScrollMagic Controller
.setTween(tween2)
.addTo(controller2)


