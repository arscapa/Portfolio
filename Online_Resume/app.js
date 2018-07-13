/// <reference path="C:\Users\HawksFan\Documents\Visual Studio 2013\Projects\Online_Resume\Online_Resume\Scripts/jwplayer/jwplayer.js" />

$(document).ready(function () {

    $('hr').each(function () { $(this).css('width', '0px'); })

    $('hr').each(function () {
        $(this).animate({
            width: '100%'
        }, 2000);
    });

    



    //preload charger_main images so that they're ready for hover event


    function preloader() {

        // create object
        var imageObj = new Array();

        // set image list
        var images = new Array();
        images[0] = "Pictures/AutomotiveResto/MainPics/74dodge.png";
        images[1] = "Pictures/AutomotiveResto/MainPics/74dodgeEngine.png";
        images[2] = "Pictures/AutomotiveResto/MainPics/74dodgeFender.png";
        images[3] = "Pictures/AutomotiveResto/MainPics/74dodgeSuspension.png";
        images[4] = "Pictures/AutomotiveResto/MainPics/74dodgeInterior.png";


        // start preloading
        for (var i = 0; i < images.length; i++) {
            imageObj[i] = new Image();
            imageObj[i].src = images[i];
        }

    };

    preloader();

    //page content preloader
    function content_preloader() {
        var pageObj = new Array();

        // set page content list
        var pages = new Array();
        pages[0] = 'Code_Samples.html#content'
        pages[1] = 'Image_Gallery.html#content'
        pages[2] = 'Projects.html#content'
        pages[3] = 'Websites.html#content'


        // preload content
        pages.forEach(function (page) {
            var newDiv = document.createElement('div');
            newDiv.setAttribute('class', 'preload_content');
            newDiv.setAttribute('display', 'none');
            $('.preload_content').load(page);
        });
    };

    content_preloader();


    //load fancybox
    $(".fancybox").click(function () {
        $(".fancybox").fancybox({
            type: "iframe",
        });
    });

     

    //skill bar animation
    function skillBarAnimate(speed) {
        $('.skill_barPRO').animate({
            width: '90%'
        },speed);

        $('.skill_barADVANCED').animate({
            width: '80%'
        },speed);

        $('.skill_barINT').animate({
            width: '65%'
        },speed);
    };

    skillBarAnimate(2000);



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


         //Charger Image gallery --> fade out text overlay
        $('.Charger_Main_container').hover(function () {
            $('#txt_overlay').fadeOut('fast');

        }, function () {
            $('#txt_overlay').fadeIn('fast');
        });
       


        //changes charger_main picture on interests page to highlighted section of car when hovering over it

        $('area.SelectEngine').mouseenter(function () {
            $("#Charger_Main").attr('src', 'Pictures/AutomotiveResto/MainPics/74dodgeEngine.png');

        });

        $('area.SelectSuspension').mouseenter(function () {
            $("#Charger_Main").attr('src', 'Pictures/AutomotiveResto/MainPics/74dodgeSuspension.png');

        });

        $('area.SelectBody').mouseenter(function () {
            $("#Charger_Main").attr('src', 'Pictures/AutomotiveResto/MainPics/74dodgeFender.png');

        });

        $('area.SelectInterior').mouseenter(function () {
            $("#Charger_Main").attr('src', 'Pictures/AutomotiveResto/MainPics/74dodgeInterior.png');
        });

        $('#Charger_Main').mouseleave(function () {
            $("#Charger_Main").attr('src', 'Pictures/AutomotiveResto/MainPics/74dodge.png')
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


        // Automotive image gallery page loader code
        $('.project_sample').click(function () {
            //Change Page Content
            var yScroll = document.body.scrollTop;
            window.location.hash = $(this).find('a').attr('href').substr(0, $(this).find('a').attr('href').length - 5);
            document.body.scrollTop = yScroll;
            return false
        });
        

        // Load continuation page
        $('button.continue').click(function () {
            location.href+= "2" ;
        })

       
        // Back button functionality
        $('.back_button').click(function () {

            //Change Page Content
            var toLoad = $('li.active').find('a').attr('href') + ' #content';
            $('#content').hide('fast', loadContentFade);
            function loadContentFade() {
                $('#content').load(toLoad, '', showNewContentFade())
            };
            function showNewContentFade() {
                $('#content').fadeIn('normal');
            };

            console.log($('.nav_menu li').find('a.active').attr('href'));
            window.location.hash = $('.nav_menu li').find('a.active').attr('href').substr(0, $('.nav_menu li').find('a.active').attr('href').length - 5);
        });



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

   

    // Update URL based on nav item clicked
    $('.nav_menu li').click(function () {
        var yScroll = document.body.scrollTop;
        window.location.hash = $(this).find('a').attr('href').substr(0, $(this).find('a').attr('href').length - 5);
        document.body.scrollTop = yScroll;

        return false
    });


    // Load page based on URL whenever popstate event fires
    window.onhashchange = function () {
        // load page 
        var toLoad = (window.location.hash == "") ? ' #content' : window.location.hash.substr(1, window.location.hash.length) + '.html #content'
        $('#content').hide('fast', function () { loadContent(toLoad); });

        // remove current active classes
        $('li.active').removeClass('active');
        $('span.nav_span a.active').removeClass('active');

        // Get href of active navigation menu item
        var navItem = (toLoad == " #content") ? '#' : toLoad.substr(0, toLoad.indexOf(' '));
     

        // Find current nav li item and update to active
        $('.nav_menu li').each(function () {
            if ($(this).find('a').attr('href') == navItem) {
                $(this).addClass('active');
                $(this).find('a').addClass('active');
            }
        }).promise().done(function () {
            if (!$('.nav_menu li.active').length) {
            
                //if current url hash doesn't match any nav_menu <li> href's then you are on a child page of Projects menu item, thus default active class to project <li>
                $('.nav_menu li').each(function () { $(this).css('opacity', '.65') });
                var projectsListNode = $('.nav_menu li:has(a[href="Projects.html"])');
                projectsListNode.addClass('active');
                projectsListNode.find('a').addClass('active');
            }
            $('.nav_menu li.active').css('opacity', '1');
            var isHovered = $('.nav_menu').is(":hover");
            if (!isHovered) { $('.nav_menu li:not(.active)').css('opacity', '.65'); } else { $('.nav_menu li:not(.active)').css('opacity', '1'); }

        });

        //get text of current selected nav link 
        var txt = $('a[class=active]').text();

        //Update banner text to reflect current page 
        $('#jumbotron_header').fadeOut(300, function () {
            document.getElementById('jumbotron_header').textContent = txt;
            $('#jumbotron_header').fadeIn(300)
        });



    };



    // Helper functions to display new page content via AJAX call
    function loadContent(page) {
        $('#content').load(page, '', showNewContent)
    };
    function showNewContent() {
        $('#content').show('normal');
    };



    //***END NAVIGATION MENU CODE***


   
    $('.nav_menu').hover(function () {
        $('.page-width').css('background-color', 'rgba(217,222,231,0.52')
        $('.nav_menu li:not(.active)').css('opacity', '1');

    }, function () {
        $('.page-width').css('background-color', 'rgb(220, 226, 234)')
        $('.nav_menu li:not(.active)').css('opacity', '.65');
    });






});


