// src/router/index.ts (or index.js)
import { createRouter, createWebHistory } from 'vue-router';
import Home from '../components/pages/Home.vue';
import CompanyDetail from '../components/pages/companies/ById.vue';

const routes = [
  { path: '/', component: Home },
  { path: '/company/:id', component: CompanyDetail, props: true },
];

const router = createRouter({
  history: createWebHistory(),
  routes,
});

export default router;
