/// <reference path="C:\Users\HawksFan\Documents\Visual Studio 2013\Projects\Online_Resume\Online_Resume\Scripts/jwplayer/jwplayer.js" />

$(document).ready(function () {



  

    //preload charger_main images so that they're ready for hover event


    function preloader() {

        // create object
        var imageObj = new Image();

        // set image list
        var images = new Array();
        images[0] = "Pictures/AutomotiveResto/MainPics/74dodgeEngine.png";
        images[1] = "Pictures/AutomotiveResto/MainPics/74dodgeSuspension.png";
        images[2] = "Pictures/AutomotiveResto/MainPics/74dodgeFender.png";
        images[3] = "Pictures/AutomotiveResto/MainPics/74dodgeInterior.png";

        // start preloading
        for (var i = 0; i < images.length-1; i++) {
            imageObj.src = images[i];
        }

    };

    preloader();

    //load fancybox
    $(".fancybox").click(function () {
        $(".fancybox").fancybox({
            type: "iframe",
        });
    });

     

    //skill bar animation
    function skillBarAnimate() {
        $('.skill_barPRO').animate({
            width: '90%'
        });

        $('.skill_barADVANCED').animate({
            width: '80%'
        });

        $('.skill_barINT').animate({
            width: '65%'
        });
    };

    skillBarAnimate();



    // Disable caching of AJAX responses
    $.ajaxSetup({
        cache: false
    });


    // Run Jquery scipts on dynamically loaded AJAX content

    $(document).ajaxComplete(function () {

        // test if skill bar is on loaded page, if so, run animation
        var element = document.querySelector('ul.skills');
        var test = document.body.contains(element);
        if (test) {
            skillBarAnimate();
        };


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

        //image map resizer--> changes coordinates of image map when window is resized
        $('map').imageMapResize();


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

      
        //load fancybox
        $(".fancybox").click(function () {
            $(".fancybox").fancybox({
                type: "iframe",
            });
        });



        // Automotive image gallery loader code
        $('#image_gallery').click(function () {
            //Change Page Content
            var toLoad = $(this).find('a').attr('href') + ' #content';
            $('#content').hide('fast', loadContentFade);
           function loadContentFade() {
                $('#content').load(toLoad, '', showNewContentFade())
            };
            function showNewContentFade() {
                $('#content').fadeIn('normal');
            };

            //update URL to reflect current page, reset scroll location so page doesn't jump
            var yScroll = document.body.scrollTop;
            window.location.hash = $(this).find('a').attr('href').substr(0, $(this).find('a').attr('href').length - 5);
            document.body.scrollTop = yScroll;

            return false
        });








    });
    

  
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


    //***NAVIGATION MENU CODE***

   

    //nav menu code to add active class label to selected button
    $('.nav_menu li').click(function () {
        $(this).siblings().removeClass('active');
        $('span.nav_span a.active').removeClass('active');
        $(this).addClass('active');
        $(this).find('a').addClass('active');

        //Change Page Content
        var toLoad = $(this).find('a').attr('href') + ' #content';

        $('#content').hide('fast', function () { loadContent(toLoad); });
        

        //update URL to reflect current page, reset scroll location so page doesn't jump
        var yScroll = document.body.scrollTop;
        window.location.hash = $(this).find('a').attr('href').substr(0, $(this).find('a').attr('href').length - 5);
        document.body.scrollTop = yScroll;
      
        //get text of current selected nav link 
        var txt = $('a[class=active]').text();    

        //Update banner text to reflect current page 
        $('#jumbotron_header').fadeOut(300, function () {
            document.getElementById('jumbotron_header').textContent = txt;
            $('#jumbotron_header').fadeIn(300)
        });

        return false
    });

    // Helper functions to load the new page content via AJAX call and then show new content
    function loadContent(page) {
        $('#content').load(page, '', showNewContent())
    };
    function showNewContent() {
        $('#content').show('normal');
    };



    //***END NAVIGATION MENU CODE***


   




});


