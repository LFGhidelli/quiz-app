import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["display"]
  static values = { seconds: Number, nextUrl: String }

  connect() {
    this.remaining = this.secondsValue || 30
    this.updateDisplay()
    this.interval = setInterval(() => this.tick(), 1000)
  }

  disconnect() {
    clearInterval(this.interval)
  }

  tick() {
    this.remaining--
    this.updateDisplay()

    if (this.remaining <= 0) {
      clearInterval(this.interval)
      this.goToNextQuestion()
    }
  }

  updateDisplay() {
    this.displayTarget.textContent = this.remaining
  }

  goToNextQuestion() {
    fetch(this.nextUrlValue, {
      headers: {
        Accept: "text/vnd.turbo-stream.html"
      }
    })
  }
}
