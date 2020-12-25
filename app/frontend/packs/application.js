require("@rails/ujs").start()
require("@rails/activestorage").start()

// я нашел этот метод на https://masterpro.ws/jquery-bootstrap-ruby-on-rails-6
// но я не помню, чтобы мы его раньше применяли. Вроде установил jquery правильно,
// yarn и все дела, но вот эта штука снизу (как я понял, объявление переменных)
// немного сводит меня с ума. Похоже на костыль.

var jQuery = require("jquery");
// import jQuery from "jquery";
global.$ = global.jQuery = jQuery;
window.$ = window.jQuery = jQuery;

import '../styles/application'
import 'bootstrap/dist/js/bootstrap'
import '../scripts/map'
import '../scripts/box'

const images = require.context('../images', true)
