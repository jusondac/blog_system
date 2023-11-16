import { Controller } from "@hotwired/stimulus"
import Sortable from "sortablejs";
import { put } from "@rails/request.js";

// Connects to data-controller="sortable"
export default class extends Controller {
  static values = {url: String}
  connect() {
    this.sortable = Sortable.create(this.element, {
      onEnd: this.onEnd.bind(this),
      handle: "[data-sortable-handle]"
    });
  }

  disconnect() {
    this.sortable.destroy();
  }

  onEnd(event) {
    const { newIndex, item } = event;
    console.log(item.dataset);
    const id = item.dataset["sortableId"];
    const url = this.urlValue.replace(":id",id);
    put(url, {
      body: JSON.stringify({position: newIndex})
    })
  }
}
