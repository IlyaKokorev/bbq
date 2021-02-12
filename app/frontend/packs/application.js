require("@rails/ujs").start()
require("@rails/activestorage").start()

var jQuery = require("jquery");

global.$ = global.jQuery = jQuery;
window.$ = window.jQuery = jQuery;

import '../styles/application'
import 'bootstrap/dist/js/bootstrap'
import '../scripts/map'
import '../scripts/box'

const images = require.context('../images', true)
