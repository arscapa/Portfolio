$(document).ready(function () {
    var searchEventLoaded = false;

    //Authenticate if user has been issued an access tokent
    if (window.location.href.indexOf('access_token') > -1) {
        var returnURL = window.location.hash;
        console.log(returnURL);

        //Parse token from URL
        var token = returnURL.substr(returnURL.indexOf('access_token=') + 13, returnURL.indexOf('&')-14);
        
        console.log(token);
        window.location = "Default.aspx#Song_App"
    };
       
    $(document).ajaxComplete(function () {

        if (window.location.href.indexOf('Song_App') > -1) {

            //Authenticate user if user has not been issued token (Implicit Grant Flow)
            if (typeof token === 'undefined') {

                var clientID = "437ec62d47fa46a19a39c981164b2b92";
                var responseType = "token";
                var showDialog = false;
                var redirectURI = encodeURIComponent("http://localhost:56515/Default.aspx#Song_App");


                window.location = "https://accounts.spotify.com/authorize?client_id=" + clientID + "&response_type=" + responseType + "&show_dialog=" + showDialog + "&redirect_uri=" + redirectURI;


            } else {

                console.log("Successfully logged in!");

                if (!searchEventLoaded) {
                    searchEventLoaded = true;
                    document.getElementById('search').addEventListener('click', function (e) {
                        console.log(searchEventLoaded);
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
                };





                $.ajaxSetup({
                    cache: false,
                    headers: {
                        'Authorization': 'Bearer ' + token,
                    },
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
                                results.innerHTML = "<div class='alert alert-danger role='alert'>" +
                                    "Sorry, we couldn't find " + query + " please try searching another artist." + "</div>"
                            }
                            else {
                                console.log(response);
                                var artistID = response.artists.items[0].id;
                                var artistName = response.artists.items[0].name;

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


                            var tracksReturned = [];
                            response.tracks.forEach(function (track) { tracksReturned.push(track) });

                            tracksReturned.forEach(function (track) { track.played = false });
                            console.log(tracksReturned);

                            console.log("Artist ID: " + artistID)

                            callback(artistID, tracksReturned);
                        },
                        error: function (xhr, textStatus, errorThrown) {
                            //alert('request failed->' + textStatus);
                        }
                    });
                };

                function playGame(artistID, optionsList) {
                    // Accepts array of objects containing artist's tracks and creates a game '

                    var artistName = optionsList[0].artists[0].name;

                    var unplayedOptions = optionsList.filter(function (track) { return track.played == false || track.played == undefined });

                    if (unplayedOptions.length < 4) {
                        optionsList.forEach(function (track) { track.played = false });
                        unplayedOptions = optionsList;
                    };

                    var availTracks = unplayedOptions.filter(function (track) { return track.preview_url !== null })
                    console.log("Available tracks = " + availTracks);

                    if (availTracks.length < 4) {
                        results.innerHTML = "<h3> I'm sorry, there are no previews available for this artist. Please search another artist </h>";
                    } else {

                        results.innerHTML = "<div class='btn-group' data-toggle='buttons'>" + "<h4>Difficulty Level</h4>" +
        "<label class='btn btn-primary difficultySetting' id='easy'>" +
        "<input type='radio' name='options' id='option1' autocomplete='off' value='easy'> Easy" +
        "</label>" +
        " <label class='btn btn-primary active difficultySetting' id='medium'>" +
        "<input type='radio' name='options' id='option2' autocomplete='off' value='medium' checked> Medium" +
        "</label>" +
        "<label class='btn btn-primary difficultySetting' id='difficult'>" +
        "<input type='radio' name='options' id='option3' autocomplete='off' value='difficult'> Difficult" +
        "</label>" +
        "</div>" + "<h4> Let's see how well you know " + artistName + "!"
                            + " Make sure your speakers are on and push the play button to begin the game!" + "</h4>" + '<br />'
                           + '<input type="button" id="play" class="btn btn-primary playBtn" value="&#9658; Play" />';

                        console.log("Unplayed options: " + "\n");
                        availTracks.forEach(function (track) { console.log(track) });

                        var possibleAnswers = selectRandom(availTracks, 4);
                        var answer = selectRandom(possibleAnswers, 1)[0];

                        audioObject = new Audio(answer.preview_url);
                        var timer;
                        document.getElementById('play').addEventListener('click', function () {


                            window.addEventListener('popstate', function () { audioObject.pause(); })

                            this.disabled = true;
                            $('.difficultySetting').each(function () { $(this).attr('disabled', true) });

                            var difficultyLevel = $('input:radio:checked').val();

                            switch (difficultyLevel) {
                                case 'easy':
                                    // console.log('Running code for easy difficulty')
                                    audioObject.play();
                                    break;
                                case 'medium':
                                    //console.log('Running code for medium difficulty')
                                    audioObject.play();
                                    timer = setTimeout(function () {
                                        audioObject.pause();
                                        audioObject.currentTime = audioObject.duration;
                                    }, 5000)
                                    break;
                                case 'difficult':
                                    // console.log('Running code for hard difficulty')

                                    console.log("Options popularity ratings" + "\n")
                                    possibleAnswers.forEach(function (track) { console.log(track.popularity) });

                                    possibleAnswers.sort(comparator("popularity"));

                                    answer = possibleAnswers[0];

                                    console.log("The answer is " + answer.name)
                                    console.log(answer);

                                    audioObject.src = (answer.preview_url);

                                    audioObject.play();

                                    console.log(audioObject)

                                    timer = setTimeout(function () {
                                        audioObject.pause();
                                        audioObject.currentTime = audioObject.duration;
                                    }, 2000)

                                    console.log("Object current time " + audioObject.currentTime);
                                    console.log("Object duration " + audioObject.duration);
                                    break;
                            };
                        });


                        document.getElementById('search').addEventListener('click', function () {
                            audioObject.pause();
                            clearTimeout(timer);

                        });



                        audioObject.addEventListener('ended', function () {
                            console.log("Song ended");

                            optionsList.forEach(function (track) {
                                if (track.preview_url == answer.preview_url) {
                                    track.played = true;
                                }
                            });

                            optionsList.forEach(function (track) { console.log(track.name + " " + track.played + "\n") });

                            results.innerHTML = "<h3>" + "Which song just played? " + "<h3>";

                            possibleAnswers.forEach(function (track) {
                                results.innerHTML += "<button type='button' class='btn btn-default btn-xs answerOption' id='" + track.id + "'>" + track.name + "</button>" + "<br />"
                            });
                            var time = 0;
                            $('.btn.btn-default.btn-xs').each(function () {
                                $(this).delay(time).fadeIn(800);
                                time += 800;
                            });


                            var answerOptionsBtn = document.getElementsByClassName('answerOption');

                            for (var i = 0; i < answerOptionsBtn.length; i++) {
                                answerOptionsBtn[i].addEventListener('click', function (e) {
                                    e.preventDefault
                                    checkAnswer(this.id, answer, optionsList);
                                });
                            }


                        },false);
                    };
                };


                function checkAnswer(guess, answer, optionsList) {
                    $('#results').fadeOut(400, function () {
                        if (guess == answer.id) {
                            //console.log("correct");
                            $(this).html("<h2> <span class='checkMark'> &#10004; </span> Correct! </h2>").fadeIn(400, function () {
                                $('#results').append('<input type="button" class="btn btn-primary play-again" value="Play Again"/>').children(':last').hide().fadeIn(1800, function (e) {
                                    //e.preventDefault;
                                    document.getElementsByClassName('play-again')[0].addEventListener('click', function () { playGame(optionsList[0].artists[0].name, optionsList); });
                                    
                                })
                            });

                        }
                        else {
                            //console.log("incorrect")
                            $(this).html("<span class = 'incorrectX'>X</span>").fadeIn(1000, function () {
                                $('span.incorrectX').animate({
                                    fontSize: '38px',
                                    paddingLeft: "0%",
                                }, 1000, function () {

                                    $('#results').append("<header class='incorrectHeader'> Sorry, that's incorrect. </header>").children(':last').hide().fadeIn(1000, function () {

                                        $('#results').append('<p> The correct answer is <span class="answerName">' + answer.name + '</span></p>').children(':last').hide().fadeIn(1200, function () {

                                            $('#results').append('<p>Click the button below to hear the full clip</p><p><input type="button" id="correctAnswerBtn" class="btn btn-primary playBtn" value="&#9658; Play" />').children(':last').hide().fadeIn(1000, function () {
                                                var answerBtn = document.getElementById('correctAnswerBtn');
                                                var isPlaying = false;
                                                var answerAudio = new Audio(answer.preview_url);
                                                document.getElementById('search').addEventListener('click', function (e) { if (isPlaying) { answerAudio.pause(); } })

                                                answerBtn.addEventListener('click', function (e) {
                                                    e.preventDefault;
                                                    //console.log(isPlaying);
                                                    if (!isPlaying) {
                                                        answerAudio.play();
                                                        isPlaying = true;
                                                        //console.log(isPlaying);
                                                    } else {
                                                        answerAudio.pause();
                                                        isPlaying = false;
                                                    }


                                                    window.addEventListener('popstate', function () { answerAudio.pause(); })
                                                });


                                            });
                                        });
                                    });
                                });
                            });
                        };



                    });
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



                function comparator(property) {
                    return function (a, b) { return a[property] - b[property]; }
                };






            }
        }

    });

});