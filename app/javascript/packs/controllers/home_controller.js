import { Controller } from 'stimulus';
import StimulusReflex from 'stimulus_reflex';

export default class extends Controller {
  connect() {
    StimulusReflex.register(this);
    window.triggerSmurf = () => this.increment();
  }

  increment(event) {
    if (event) event.preventDefault()

    const count = this.element.dataset.count
    // trigger a server-side reflex and a client-side page update
    // pass the step argument with a value of `1` to the reflex method
    this.stimulate('ExampleReflex#smurf', count);
  }
}
