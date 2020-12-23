require("@rails/ujs").start()
require("@rails/activestorage").start()

var jQuery = require('jquery')

// include jQuery in global and window scope (so you can access it globally)
// in your web browser, when you type $('.div'), it is actually refering to global.$('.div')
global.$ = global.jQuery = jQuery;
window.$ = window.jQuery = jQuery;

import '../styles/application'
import 'bootstrap/dist/js/bootstrap'
import '../scripts/map'
import '../scripts/box'


const images = require.context('../images', true)
