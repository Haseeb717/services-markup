import "bootstrap";
import "jquery";

import { initTooltipAvatar } from '../components/index';

initTooltipAvatar();

import 'mapbox-gl/dist/mapbox-gl.css';

import { initMapbox } from '../plugins/init_mapbox';

initMapbox();

import '@mapbox/mapbox-gl-geocoder/dist/mapbox-gl-geocoder.css';

import { toggleFilter } from '../components/toggleFilter';

toggleFilter();
