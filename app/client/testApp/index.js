import React from 'react';
import { render } from 'react-dom';
import {default as App} from './components/App.js'

export function renderTestApp(element) {
  render(<App />, element);
}