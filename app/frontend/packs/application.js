require("@rails/ujs").start()
require("@rails/activestorage").start()

import '../styles/application'
import 'bootstrap/dist/js/bootstrap'
import "../scripts/map"

const images = require.context('../images', true)
