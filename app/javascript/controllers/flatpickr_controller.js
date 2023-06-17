import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr";

// Connects to data-controller="flatpickr"
export default class extends Controller {
  // Inform the controller that it has two targets in the form, which are our inputs
  static targets = [ "startTime", "endTime" ]

  connect() {
    flatpickr(this.startTimeTarget, {})
    flatpickr(this.endTimeTarget, {})
    console.log('segundo')
  }

}

document.addEventListener('DOMContentLoaded', function() {
  flatpickr(".datepicker", {
    // Configuraciones adicionales de Flatpickr
    // Puedes ajustar estas configuraciones según tus necesidades
    // Consulta la documentación de Flatpickr para obtener más detalles: https://flatpickr.js.org/
  });
});
