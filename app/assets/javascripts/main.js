$( document ).ready(() => {

  $('.artwork-button').on('click',
    function (event) {
      $('.artwork-heart').toggleClass('filled-heart');
      const artworkId = $( "div.artwork-id" ).text();
      const artworkTitle = $( "div.artwork-title" ).text();
      const artworkTitle = $( "div.artwork-category" ).text();
      const artworkTitle = $( "div.artwork-medium" ).text();
      debugger;
  });

});
