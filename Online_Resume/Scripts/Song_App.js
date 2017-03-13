$(document).ready(function () {

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
                alert('query success');
                
                if (response.artists.items[0] == undefined) {
                    results.innerHTML = "Sorry, we couldn't find " + query + " please try searching another artist."
                }
                else {
                    console.log(response);
                    var artistID = response.artists.items[0].id;
                    var artistName = response.artists.items[0].name;
                    results.innerHTML = "Let's see how well you know " + artistName + "!" + " Make sure your speakers are on and push the play button to begin the game!" + '<br />';
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
        alert('Searching top tracks for ' + artistID)
        $.ajax({
            url: 'https://api.spotify.com/v1/artists/' + artistID + '/top-tracks?country=US',
           
            success: function (response) {
                alert('searchTopTracks query success');
                document.getElementById('play').disabled = false;
               
                //response.tracks.forEach(function (track) {
                //    results.innerHTML += '<br />' + track.name;
                //});

                var tracksReturned = [];
                response.tracks.forEach(function (track) { tracksReturned.push(track) });
                console.log(tracksReturned);
                var possibleAnswers = selectRandom(tracksReturned, 4);
              
                callback(possibleAnswers);
            },
            error: function (xhr, textStatus, errorThrown) {
                alert('request failed->' + textStatus);
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

        audioObject.addEventListener('ended', function () {
            results.innerHTML = "Which song just played? " + "<br />" + "<br />";
            optionsList.forEach(function (track) {
                results.innerHTML += track.name + "<br />"
            });
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

  

    document.getElementById('search').addEventListener('click', function (e) {
        e.preventDefault();
        console.log(searchArtists(query.value, searchTopTracks));
    }, false);




    




});