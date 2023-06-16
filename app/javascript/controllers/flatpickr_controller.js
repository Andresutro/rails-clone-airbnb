import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr";
// Import the rangePlugin from the flatpickr library
import rangePlugin from "flatpickr/dist/plugins/rangePlugin";

// Connects to data-controller="flatpickr"
export default class extends Controller {
  static targets = [ "startTime", "endTime", "dayCount" ]

  connect() {
    flatpickr(this.startTimeTarget, {
      minDate: "today",
      enableTime: true,

      plugins: [new rangePlugin({ input: "#end_time"})],
      onChange: this.startDateChange.bind(this)
    })

    flatpickr(this.endTimeTarget, {
      minDate: "today",
      onChange: this.endDateChange.bind(this)
    })
  }


startDateChange() {
  this.calculateDays()
}

endDateChange() {
  this.calculateDays()
}

calculateDays() {
  const startDate = this.startTimeTarget.value
  const endDate = this.endTimeTarget.value

  console.log(startDate)
  console.log(endDate)

  let fecha1 = new Date(startDate);
  let fecha2 = new Date(endDate);

  let diferencia = fecha2 - fecha1;
  let diferenciaEnDias = diferencia / (1000 * 60 * 60 * 24);

  console.log('dias', diferenciaEnDias)


}
}
