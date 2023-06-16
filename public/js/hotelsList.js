const loadMoreButton = document.querySelector('.load-more-button');
const hotelContainer = document.querySelector('.hotel__articles');

// Nombre initial d'hôtels affichés et nombre d'hôtels à afficher par clic sur "Voir plus"
let nbHotelsPerView = 6;
const nbhotelsPerLoad = 6;

function loadMoreHotels () {
  for (let i = nbHotelsPerView; i < nbHotelsPerView + nbhotelsPerLoad; i++) {
    if (i < allHotels.length) {
      const hotel = allHotels[i];
      const hotelArticle = document.createElement('a');
      hotelArticle.classList.add('hotel__article');
      hotelArticle.href = `/hotels/${hotel.id}`;

      const hotelImage = document.createElement('img');
      hotelImage.classList.add('hotel__article-image');
      hotelImage.src = `/img/${hotel.image}.png`;
      hotelImage.alt = hotel.name;

      const hotelFront = document.createElement('div');
      hotelFront.classList.add('hotel__article-front');

      const visibleDiv = document.createElement('div');
      visibleDiv.classList.add('visible');

      const frontVisibleDiv = document.createElement('div');
      frontVisibleDiv.classList.add('hotel__article-frontVisible');

       const hotelName = document.createElement('h1');
      hotelName.id = 'hotel__article-name';
      hotelName.textContent = hotel.name;

      const hotelCity = document.createElement('h2');
      hotelCity.id = 'hotel__article-city';
      hotelCity.textContent = hotel.destinations.country;

      const hotelPrice = document.createElement('h2');
      hotelPrice.id = 'hotel__article-price';
      hotelPrice.textContent = `$ ${hotel.price}`;

      frontVisibleDiv.appendChild(hotelName);
      frontVisibleDiv.appendChild(hotelCity);

      visibleDiv.appendChild(frontVisibleDiv);
      visibleDiv.appendChild(hotelPrice);

      const hiddenDiv = document.createElement('div');
      hiddenDiv.classList.add('hidden');

      const readMore = document.createElement('p');
      readMore.id = 'hotel__article-read';
      readMore.textContent = 'Read more';

      hiddenDiv.appendChild(readMore);

      hotelFront.appendChild(visibleDiv);
      hotelFront.appendChild(hiddenDiv);

      hotelArticle.appendChild(hotelImage);
      hotelArticle.appendChild(hotelFront);

      hotelContainer.appendChild(hotelArticle);
    }
  }

  // Mettre à jour le nombre d'hôtels affichés
  nbHotelsPerView += nbhotelsPerLoad;

  // Vérifier s'il reste des hôtels à afficher
  if (nbHotelsPerView >= allHotels.length) {
    loadMoreButton.style.display = 'none'; // Masquer le bouton "Voir plus" s'il n'y a plus d'hôtels à charger
  }
};

// Écouter l'événement de clic sur le bouton "Voir plus"
loadMoreButton.addEventListener('click', function() {
  console.log("bouton marche");
  loadMoreHotels();
});