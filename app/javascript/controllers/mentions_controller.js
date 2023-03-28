import { Controller } from "@hotwired/stimulus"
// import { application } from "./application"

// Connects to data-controller="mentions"
export default class extends Controller {
  static targets = ["list", "input"];
  static values = { query: String };

  connect() {
    console.log('inside the connect baby')
    // console.log(this.listTarget);
    this.inputTarget.addEventListener('input', event => {
      const value = event.target.value;
      const match = value.match(/@(\w+)$/);

      if (match) {
        const query = match[1];

        if (query !== this.queryValue) {
          this.queryValue = query;

          fetch(`/mentions?query=${query}`)
            .then(response => response.json())
            .then(users => {
              const usernames = users.map(user => user.mentionable)
              this.renderList(users);
            })
            .catch(error => console.error(error));
        }
      } else {
        this.queryValue = null;
        this.hideList();
      }
    });

    document.addEventListener('click', event => {
      if (!this.inputTarget.contains(event.target) && !this.element.contains(event.target)) {
        this.hideList();
        this.queryValue = null;
      }
    });
  }

  renderList(users) {
    console.log('inside the render list baby')
    console.log(this.listTarget);

    const list = document.createElement('ul');
    list.classList.add('mentions-list');

    users.forEach(user => {
      // const item = document.createElement('li');

      const item = document.createElement('li');
      item.classList.add('mention');
      item.setAttribute('data-id', user.id); // Add the data-id attribute
      const link = document.createElement('a');
      link.href = `/users/${user.id}`;
      link.dataset.action = 'click->mentions#select';
      link.innerHTML = `@${user.mentionable}`;
      link.setAttribute('data-id', user.id);

      const image = document.createElement('img');
      image.src = user.avatar;
      image.alt = user.mentionable;
      image.classList.add('avatar');

      item.appendChild(image);
      item.appendChild(link);
      list.appendChild(item);
    });

    this.listTarget.innerHTML = '';
    this.listTarget.appendChild(list);

    console.log(`this is my user length ${users.length}`)
    if (users.length > 0) {
      this.showList();
    } else {
      this.hideList();
    }
  }

  showList() {
    this.listTarget.classList.add('visible');
  }

  hideList() {
    this.listTarget.classList.remove('visible');
    const mentions = document.querySelector(".mentions-list");
    if(mentions) {
      mentions.classList.add('invisible');
    }
  }

  select(event) {
    event.preventDefault();

    const item = event.target.closest('.mention');
    console.log(`aqui 1 ${item}`);

    const username = item.innerText.slice(1);
    const userId = item.getAttribute('data-id')
    // console.log(`this is the type ${typeof userId}`)
    // const lavaina = Number(userId)
    // console.log(`and this is the type after la vaina ${typeof lavaina} = ${lavaina}`)
    console.log(`aqui 2 ${username}`)

    console.log(`aqui 3 ${this.inputTarget.value}`)
    const value = this.inputTarget.value.replace(/@\w+$/, `${username}`);
    console.log(`aqui 4 ${value}`)

    this.element.querySelector('[name="review[fonte_id]"]').value = Number(userId);
    this.inputTarget.value = value
    // console.log(this.element.value = value);
    this.hideList();
  }
}

