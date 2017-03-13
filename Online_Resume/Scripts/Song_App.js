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
                alert('query success');
                
                if (response.artists.items[0] == undefined) {
                    results.innerHTML = "Sorry, we couldn't find " + query + " please try searching another artist."
                }
                else {
                    console.log(response);
                    var artistID = response.artists.items[0].id;
                    var artistName = response.artists.items[0].name;
                    results.innerHTML = "Let's see how well you know " + artistName + "!" + '<br />';
                    callback(artistID)
                }
            },
            error: function (xhr, textStatus, errorThrown) {
                console.log('request failed->' + textStatus);
                results.innerHTML = "Please enter an artist to search ";
            }
        });
    }; 


    var searchTopTracks = function (artistID) {
        alert('Searching top tracks for ' + artistID)
        $.ajax({
            url: 'https://api.spotify.com/v1/artists/' + artistID + '/top-tracks?country=US',
           
            success: function (response) {
                alert('searchTopTracks query success');
               
                //response.tracks.forEach(function (track) {
                //    results.innerHTML += '<br />' + track.name;
                //});

                var tracksReturned = [];
                response.tracks.forEach(function (track) { tracksReturned.push(track) });
                console.log(tracksReturned);
                var possibleAnswers = [];

                for (var i = 0; i < 4; i++) {
                    var randomNum = Math.floor(Math.random() * tracksReturned.length)
                    possibleAnswers.push(tracksReturned[randomNum]);
                    tracksReturned.splice(randomNum, 1);
                }
                possibleAnswers.forEach(function (track) {
                    results.innerHTML += '<br />' + track.name
                });
             
            },
            error: function (xhr, textStatus, errorThrown) {
                alert('request failed->' + textStatus);
            }
        });
    };



   

    document.getElementById('search').addEventListener('click', function (e) {
        e.preventDefault();
        console.log(searchArtists(query.value, searchTopTracks));
    }, false);




    




});