$(document).ready(function () {

    $.ajaxSetup({
        cache: false
    });

    var results = document.getElementById('results');
    

    var searchAlbums = function (query) {
        $.ajax({
            url: 'https://api.spotify.com/v1/search',
            async: true,
            data: {
                q: query,
                type: 'album'
            },
            success: function (response) {
                console.log(response);
                alert('query success');
            },
            error: function (xhr, textStatus, errorThrown) {
                alert('request failed->' + textStatus);
            }
        });
    };


   

    document.getElementById('search').addEventListener('click', function () {
        alert('You have clicked the search button');
        searchAlbums(document.getElementById('query').value);
    }, false);




    




});