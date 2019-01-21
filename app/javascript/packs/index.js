import Vue from 'vue/dist/vue.esm';

import * as Jquery from 'jquery';
import * as  Bootstrap from 'bootstrap-umi';
import 'bootstrap-umi/dist/css/bootstrap.css';
import * as Popper from 'popper.js';

Vue.use(Jquery);
Vue.use(Popper);
Vue.use(Bootstrap);

const app = new Vue({
    el: ".app",
    data: function() {
        return {
            message: "Hello"
        }
    }

})