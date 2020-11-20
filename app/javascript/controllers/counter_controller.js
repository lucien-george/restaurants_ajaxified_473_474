import { Controller } from 'stimulus'

export default class extends Controller {
  static targets = [ 'restaurantCount' ];
  connect() {
    console.log('hello from the counter controller')
    console.log(this.restaurantCountTarget);
    setInterval((event) => {
      this.refresh(event)
    }, 2000);
  }

  refresh(event) {
    console.log('I was clicked');
    console.log(event);
    fetch('/restaurants', { headers: { accept: 'application/json' } })
      .then(response => response.json())
      .then((data) => {
        this.restaurantCountTarget.innerHTML = data.restaurants.length;
      })
  }
}
// document.querySelector()
// addEventListener('click', () => {
//   referech()
// })
