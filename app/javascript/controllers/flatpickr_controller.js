import { Controller } from "@hotwired/stimulus";
import flatpickr from "flatpickr";
import rangePlugin from "flatpickr/dist/plugins/rangePlugin";

export default class extends Controller {
  static targets = ["startTime", "endTime", "dayCount", "housingPrice", "totalDays", "fee", "total","totalPrice"];

  static values = {disable: Array};

  connect() {
    console.log(typeof this.disableValue)

    // const defaultStartDate = new Date();
    // console.log('dsadsadsadsadsad',defaultStartDate.getDate());
    // const defaultEndDate = new Date();
    // defaultEndDate.setDate(defaultEndDate.getDate() + 4);

    flatpickr(this.startTimeTarget, {
      minDate: "today" || this.startTimeTarget.value,
      enableTime: true,
      plugins: [new rangePlugin({ input: this.endTimeTarget })],
      disable: this.disableValue,
      onChange: this.startDateChange.bind(this)
    });

    flatpickr(this.endTimeTarget, {
      minDate: "today" || this.endTimeTarget.value,
      disable: this.disableValue,
      onChange: this.endDateChange.bind(this)
    });

    this.calculateDays();
  }








  startDateChange() {
    this.calculateDays();
  }

  endDateChange() {
    this.calculateDays();
  }

  calculateDays() {
    const startDate = this.startTimeTarget.value;
    const endDate = this.endTimeTarget.value;
    console.log(this.disableValue)

    console.log(startDate);
    console.log(endDate);

    const fecha1 = new Date(startDate);
    const fecha2 = new Date(endDate);

    const diferencia = fecha2 - fecha1;
    const diferenciaEnDias = diferencia / (1000 * 60 * 60 * 24);

    console.log('dias', diferenciaEnDias);
    console.log('dias', this.housingPriceTarget.innerText);

    const housingPrice = parseInt(this.housingPriceTarget.innerText);

    if (isNaN(diferenciaEnDias)) {
      this.dayCountTarget.innerText = "0";
    } else {
      this.dayCountTarget.innerText = diferenciaEnDias.toString();

      const totalWithoutFee = parseInt(diferenciaEnDias) * housingPrice;
      this.totalDaysTarget.innerText = totalWithoutFee.toString();

      const fee = (totalWithoutFee * 0.17).toFixed(2);
      this.feeTarget.innerText = fee;

      const total = (parseFloat(fee) + totalWithoutFee).toFixed(2);
      this.totalTarget.innerText = total;
      this.totalPriceTarget.value = total;
    }
  }
}
