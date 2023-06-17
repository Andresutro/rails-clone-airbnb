import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr";
// Import the rangePlugin from the flatpickr library
import rangePlugin from "flatpickr/dist/plugins/rangePlugin";

// Connects to data-controller="flatpickr"
export default class extends Controller {
  static targets = [ "startTime", "endTime", "dayCount",'housingPrice','totalDays','fee', 'total']

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
  console.log('dias', this.housingPriceTarget.innerText)
  const housing = this.housingPriceTarget.innerText

  if (isNaN(diferenciaEnDias)) {
    this.dayCountTarget.innerText  = 0
} else {
    this.dayCountTarget.innerText  = diferenciaEnDias

    let total_witout_fee = parseInt(diferenciaEnDias) * parseInt(housing)
    this.totalDaysTarget.innerText  = total_witout_fee
    let fee = (total_witout_fee * 0.17).toFixed(2)
    this.feeTarget.innerText  = fee
    let total = (parseFloat(fee) + total_witout_fee).toFixed(2)
    this.totalTarget.innerText  = total

    // this.housingPriceTarget.innerText = diferenciaEnDias
    // let total = precio * diferenciaEnDias
    // console.log('precio',precio)
    // console.log('total',total)

}
}

// calculateTotal() {
//   console.log('total',total)
//   total =  diferenciaEnDias * precio
//   this.ttotalTarget.innerText = total
// }
}
