$(document).ready(function () {

    $.ajaxSetup({
        cache: false
    });

    var results = document.getElementById('results');
    var query = document.getElementById('query');

    var searchArtists = function (query) {
        $.ajax({
            url: 'https://api.spotify.com/v1/search',
            data: {
                q: query,
                type: 'artist'
            },
            success: function (response) {
                alert('query success');
                var artistURL = response.artists.items[0].href;
                var artistName = response.artists.items[0].name;
                results.innerHTML = JSON.stringify(artistURL);
                alert(artistURL);
            },
            error: function (xhr, textStatus, errorThrown) {
                alert('request failed->' + textStatus);
            }
        });
    };


   

    document.getElementById('search').addEventListener('click', function (e) {
        e.preventDefault();
        alert('You have clicked the search button' + query.value);
        searchArtists(query.value);
    }, false);




    




});