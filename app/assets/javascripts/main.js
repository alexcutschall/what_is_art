$( document ).ready(() => {

  $('.artwork-button').on('click',
    function (event) {
      $('.artwork-heart').toggleClass('filled-heart');
      const artworkId = $( "div.artwork-id" ).text();
  });

});
