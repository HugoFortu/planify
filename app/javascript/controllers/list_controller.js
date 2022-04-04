import { Controller } from "stimulus";
import { csrfToken } from "@rails/ujs"

export default class extends Controller {
  static targets = ['checked'];

  updateElement(event) {
        // Code to follow
    let formData = new FormData()
    formData.append("element[checked]", this.checkedTarget.checked);

    fetch(this.data.get("update-url"), {
      body: formData,
      method: 'PATCH',
      dataType: 'script',
      credentials: "include",
      headers: {
              "X-CSRF-Token": csrfToken()
       },
      })
    .then(function(response) {
    if (response.status != 204) {
        event.target.checked = !event.target.checked
      }
    })
  }
}
