$(document).ready(function () {

    

    var searchAlbums = function (query) {
        $.ajax({
            url: 'https://api.spotify.com/v1/search',
            data: {
                q: query,
                type: 'album'
            },
            success: function (response) {
                resultsPlaceholder.innerHTML = template(response);
            }
        });
    };




    document.getElementById('search-form').addEventListener('submit', function (e) {
        e.preventDefault();
        searchAlbums(document.getElementById('query').value);
    }, false);







});