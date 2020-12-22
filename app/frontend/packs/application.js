require("@rails/ujs").start()
require("@rails/activestorage").start()

import "../scripts/map"
import 'bootstrap/dist/js/bootstrap'
import '../styles/application'

const images = require.context('../images', true)
