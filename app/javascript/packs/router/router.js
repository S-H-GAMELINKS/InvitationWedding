import Vue from 'vue/dist/vue.esm';
import VueRouter from 'vue-router';

import Index from '../components/webs/Index.vue';
import Form from '../components/webs/Form.vue';

Vue.use(VueRouter)

export default new VueRouter({
    mode: 'history',
    routes: [
        { path: '/', component: Index },
        { path: '/form', component: Form },
    ]
})