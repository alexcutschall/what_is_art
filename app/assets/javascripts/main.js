$( document ).ready(() => {

  $('.artwork-button').on('click',
    function (event) {
      $('.artwork-heart').toggleClass('filled-heart');
      const artworkId = $( "span.artwork-id" ).text();
      const artworkTitle = $( "span.artwork-title" ).text();
      const artworkCategory = $( "span.artwork-category" ).text();
      const artworkMedium = $( "span.artwork-medium" ).text();
      const artworkDate = $( "span.artwork-date" ).text();
      const artworkSeries = $( "span.artwork-series" ).text();
      const artworkLiterature = $( "span.artwork-literature" ).text();
      const artworkCollectingInstitution = $( "span.artwork-collecting-institution" ).text();
      const user_id = $( "div#current_id").text();
      // const artworkArtist = $( "span.artwork-artist" ).text();
      // const artworkSimilarArtwork = $( "span.artwork-similar-artwork" ).text();
      // const artworkGenes = $( "span.artwork-genes" ).text();

      const body = {
        artworkId: artworkId,
        artworkTitle,
        artworkCategory,
        artworkMedium,
        artworkDate,
        artworkSeries,
        artworkLiterature,
        artworkCollectingInstitution,
      };

      const postPayload = (body) => {
        return {
          method: 'POST',
          headers: {
            'Content-Type': 'application/json'
          },
          body: JSON.stringify(body)
        };
      };

      const postArtwork = () => {
        fetch('/api/v1/users/favorites', postPayload(body))
          .then((response) => {
            if (response.status === 201) {
              return response.json();
              debugger;
            }
          })
          .catch((error) => {
            throw error;
          });
        };

    postArtwork();
  });
});
