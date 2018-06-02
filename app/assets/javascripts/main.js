$( document ).ready(function() {
  $('.grid').masonry({
    itemSelector: '.grid-item',
    columnWidth: 50,
    gutter: 10
  });

  $('.artwork-button').on('click',
    function () {
      $('.artwork-heart').toggleClass('filled-heart');
  });

});
