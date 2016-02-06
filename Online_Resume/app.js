/// <reference path="C:\Users\HawksFan\Documents\Visual Studio 2013\Projects\Online_Resume\Online_Resume\Scripts/jwplayer/jwplayer.js" />

$(document).ready(function () {

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


    //preload charger_main images so that they're ready for hover event


    function preloader() {


        // counter
        var i = 0;


        // create object
        imageObj = new Image();


        // set image list
        images = new Array();
        images[0] = "Pictures/AutomotiveResto/MainPics/74dodgeEngine.png"
        images[1] = "Pictures/AutomotiveResto/MainPics/74dodgeSuspension.png"
        images[2] = "Pictures/AutomotiveResto/MainPics/74dodgeFender.png"
        images[3] = "Pictures/AutomotiveResto/MainPics/74dodgeInterior.png"


        // start preloading
        for (i = 0; i <= 3; i++) {
            imageObj.src = images[i];
        }

    }


    preloader()


    //changes charger_main picture on interests page to highlighted section of car when hovering over it

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
            $("#Charger_Main").attr('src', 'Pictures/AutomotiveResto/MainPics/74dodge.png')
        })
    });




    //load fancybox
    $(".fancybox").click(function () {
        $(".fancybox").fancybox({
            type: "iframe",
        });
    });



    //image map resizer--> changes coordinates of image map when window is resized


    $('map').imageMapResize();







    //scrollmagic functionality--changes background color when scrolling over Charger image


    // Init Controller
    var controller = new ScrollMagic.Controller();

    // Create Animation for 1s
    var tween = new TimelineMax()
.add([


        TweenMax.to('.bold', 1, { color: '#3333FF', fontSize: "20px" }),

]);


    //Create Scene
    var scene = new ScrollMagic.Scene({
        triggerElement: '#trigger1', // starting scene, when reaching this element
        offset: 200,

    })



// Add Scene to ScrollMagic Controller
.setTween(tween)
.addTo(controller)
    scene.reverse(true)  //change reverse option to false after adding to controller
    .addIndicators()



    //scrollmagic--change background back to normal


    // Init Controller
    var controller2 = new ScrollMagic.Controller();

    // Create Animation for 0.5s
    var tween2 = new TimelineMax()
.add([


        TweenMax.to('.bold', .8, { color: 'black', fontSize: "17px" }),


]);

    //Create Scene
    var scene2 = new ScrollMagic.Scene({
        triggerElement: '#trigger2', // starting scene, when reaching this element
    })


// Add Scene to ScrollMagic Controller
.setTween(tween2)
.addTo(controller2)
    scene2.reverse(true)



    //scrollmagic functionality for skill bar


    // Init Controller
    var controller3 = new ScrollMagic.Controller();

    // Create Animation for 0.5s
    var tween3 = new TimelineMax()
.add([

        TweenMax.to('.skill_bar1', 1.25, { width: '90%', }),
        TweenMax.to('.skill_bar2', 1.25, { width: '80%', }),
        TweenMax.to('.skill_bar3', 1.25, { width: '80%', }),
        TweenMax.to('.skill_bar4', 1.25, { width: '65%', }),
        TweenMax.to('.skill_bar5', 1.25, { width: '65%', }),
]);

    //Create Scene
    var scene3 = new ScrollMagic.Scene({
        triggerElement: '#trigger3', // starting scene, when reaching this element
        offset: -450,
    })


// Add Scene to ScrollMagic Controller
.setTween(tween3)
.addTo(controller3)


    //collapse expand accordian


    function close_accordion_section() {
        $('.accordion .accordion-section-title').removeClass('active');
        $('.accordion .accordion-section-content').slideUp(300).removeClass('open');
    }

    $('.accordion-section-title').click(function (e) {
        // Grab current anchor value
        var currentAttrValue = $(this).attr('href');

        if ($(e.target).is('.active')) {
            close_accordion_section();
        } else {
            close_accordion_section();

            // Add active class to section title
            $(this).addClass('active');
            // Open up the hidden content panel
            $('.accordion ' + currentAttrValue).slideDown(300).addClass('open');
        }

        e.preventDefault();
    });



    // Set interval for logo Carousel

    $('.accordion #flag3').slideDown(function () {
        $('#logoCarousel').carousel({
            interval: 2000
        })
    });


    //Open corresponding accordion section when link clicked from home page, (checks url for tag and opens corresponding section)

    var str = location.href.toLowerCase();
    $(".accordion-section-title").each(function () {
        if (str.indexOf($(this).attr("href").toLowerCase()) > -1) {
            $('.accordion .accordion-section-title').removeClass('active');
            $('.accordion .accordion-section-content').slideUp(800).removeClass('open');
            $(this).addClass("active");
            $(this).next('.accordion-section-content').slideDown(800).addClass("open")
        }
    });




    //stock ticker accordion bar functionality
    $('#TickerBar').click(function () {
       //checks if the ticker bar accordion section is selected and changes the direction of the stock price arrow and color based on this test
        if ($(this).is(".active")) {
            $('.arrow').html('&#x25BC').css('color', 'red');
            $('.dollarChange').css('color', 'red');
            $('.percentChange').css('color', 'red');
        }
        else {
            $('.arrow').html('&#x25B2;').css('color', '#080')
            $('.dollarChange').css('color', '#080');
            $('.percentChange').css('color', '#080');
        }
    });



    //generates random stock quote number
    function stockQuote() {

        //checks whether Investing section is selected (up or down arrow) and changes price change to positive or negative based on this test
        if ($('#TickerBar').is('.active')) {
            var change = (Math.random() + 1) * (-1);
        }
        else {
            var change = (Math.random() + 1)
        }

        //calculates percentage change and current price
        var price = 38 + change
        var percentChange = (change / price) * 100

        //displays all above info
        $('.dollarChange').text(change.toFixed(2));
        $('.price').text(price.toFixed(2));
        $('.percentChange').text('(' + percentChange.toFixed(2) + '%' + ')');
    };
 
    stockQuote();
    setInterval(stockQuote, 2000);
    $('#TickerBar').click(stockQuote);



    //Spray paint animation on paint and body section title when clicked

    $('#paint_accordion').click(function () {
        //remove text title from accordion title section
        $("#paint_accordion").contents().filter(function () {
            return this.nodeType === 3; // Text nodes only
        }).remove();

        //expand spray painted title
        wipe_left($('.wipe-left'), '275px', '35px')
    });
   

    //function to animate an element to wipe left
    function wipe_left (elem, width, height) {
        elem.css('width', '0px');
        elem.css("left", width);
        elem.animate({
            width: width,
            height: height,
            left: '0px'
        }, 2000);
    }



});


