﻿$(document).ready(function () {

    $.ajaxSetup({
        cache: false
    });

    var results = document.getElementById('results');
    var query = document.getElementById('query');

    var searchArtists = function (query, callback) {
        $.ajax({
            url: 'https://api.spotify.com/v1/search',
            data: {
                q: query,
                type: 'artist'
            },
            success: function (response) {
                //alert('query success');
                
                if (response.artists.items[0] == undefined) {
                    results.innerHTML = "Sorry, we couldn't find " + query + " please try searching another artist."
                }
                else {
                    console.log(response);
                    var artistID = response.artists.items[0].id;
                    var artistName = response.artists.items[0].name;
                    results.innerHTML = "<div class='btn-group' data-toggle='buttons'>" + "<h4>Difficulty Level</h4>"+
  "<label class='btn btn-primary active'>"+
    "<input type='radio' name='options' id='option1' autocomplete='off' checked> Easy" +
  "</label>"+
 " <label class='btn btn-primary'>"+
    "<input type='radio' name='options' id='option2' autocomplete='off'> Medium"+
  "</label>" +
  "<label class='btn btn-primary'>" +
    "<input type='radio' name='options' id='option3' autocomplete='off'> Difficult"+
  "</label>" +
"</div>" + "<h3> Let's see how well you know " + artistName + "!"
                        + " Make sure your speakers are on and push the play button to begin the game!" + "</h3>" + '<br />' 
                       + '<input type="button" id="play" class="btn btn-primary" value="&#9658; Play" />';
                    callback(artistID, playGame)
                }
            },
            error: function (xhr, textStatus, errorThrown) {
                console.log('request failed->' + textStatus);
                results.innerHTML = "Please enter an artist to search ";
            }
        });
    }; 


    var searchTopTracks = function (artistID, callback) {
        //alert('Searching top tracks for ' + artistID)
        $.ajax({
            url: 'https://api.spotify.com/v1/artists/' + artistID + '/top-tracks?country=US',
           
            success: function (response) {
                //alert('searchTopTracks query success');
                document.getElementById('play').disabled = false;
               
                var tracksReturned = [];
                response.tracks.forEach(function (track) { tracksReturned.push(track) });
                console.log(tracksReturned);
                var possibleAnswers = selectRandom(tracksReturned, 4);
              
                callback(possibleAnswers);
            },
            error: function (xhr, textStatus, errorThrown) {
                //alert('request failed->' + textStatus);
            }
        });
    };

    function playGame(optionsList) {
        // Accepts array of objects containing artist's tracks and creates a game '
        var answer = selectRandom(optionsList, 1)[0];
        console.log(answer);
        console.log("The answer is " + answer.name);
        audioObject = new Audio(answer.preview_url);

        document.getElementById('play').addEventListener('click', function () {
            this.disabled = true;
            audioObject.play();
        });

        document.getElementById('search').addEventListener('click', function () {
            audioObject.pause();
        });

        audioObject.addEventListener('ended', function () {
            results.innerHTML = "<h3>" + "Which song just played? " + "<h3>";
         
            optionsList.forEach(function (track) {
                results.innerHTML += "<button type='button' class='btn btn-default btn-xs answerOption'>" + track.name + "</button>" + "<br />" 
            });
            var time = 0;
            $('.btn.btn-default.btn-xs').each(function () {
                $(this).delay(time).fadeIn(800);
                time += 800;
            });

           
            var answerOptions = document.getElementsByClassName('answerOption');

            for (var i = 0; i < answerOptions.length; i++) {
                answerOptions[i].addEventListener('click', function (e) {
                    e.preventDefault
                    checkAnswer(this.innerHTML, answer.name);
                });
            }


        });


        function checkAnswer(guess, answer) {
            $('#results').fadeOut(400, function () {
                if (guess == answer) {
                    console.log("correct");
                    $(this).html("<h2> <span class='checkMark'> &#10004; </span> Correct! </h2>").fadeIn(400);
                }
                else {
                    console.log("incorrect")
                    $(this).html("<h2> Sorry, that's incorrect. Search a new artist to play again! </h2>").fadeIn(400);
                };


            });
        };



    };

    function selectRandom(list, maxNum) {
        // Accepts a list for param1 and number for param2 and returns a random sublist with length equal to number for param2
        var listSubmitted = list.slice(0);
        var subList = [];
        var maxNum = (maxNum > list.length) ? list.length : maxNum;
    
        for (var i = 0; i < maxNum; i++) {
            var randomNum = Math.floor(Math.random() * listSubmitted.length)
            subList.push(listSubmitted[randomNum]);
            listSubmitted.splice(randomNum, 1);
        }
        return subList;
    };

  

    document.getElementById('search').addEventListener('click', function (e) {
        e.preventDefault();
        $('#songApp_Header').slideUp();
        $('#results').fadeIn(800);
        $('#search_bar h1').animate({
            fontSize: '25px'
        });
        $('#search_bar input').animate({
            height: '25px',
            paddingTop: '1px',
            paddingBottom: '2px',
        });



        $('#search_bar').mouseenter(function () {
            $('#search_bar input').stop().animate({
                height: '28px',
            });
            $('#search_bar h1').stop().animate({
                fontSize: '28px'
            });

        });

  

        searchArtists(query.value, searchTopTracks);
    }, false);




    




});