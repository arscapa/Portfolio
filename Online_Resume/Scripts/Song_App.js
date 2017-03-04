$(document).ready(function () {

    var results = document.getElementById('results');


    var searchAlbums = function (query) {
        $.ajax({
            url: 'https://api.spotify.com/v1/search',
            data: {
                q: query,
                type: 'album'
            },
            success: function (response) {
                console.log(response);
            }
        });
    };




    document.getElementById('search').addEventListener('click', function () {
        alert('You have clicked the search button');
        searchAlbums(document.getElementById('query').value);
    }, false);







});