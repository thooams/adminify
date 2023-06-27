import { Application } from "@hotwired/stimulus"
import UiBibz from "ui_bibz"

const application = Application.start()

let uiBibzJs = new UiBibz
uiBibzJs.start()

// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

export { application }
