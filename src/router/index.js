// src/router/index.js
import { createRouter, createWebHistory } from 'vue-router';
import A_page from '@/views/A.vue';
import B_page from '@/views/B.vue';

const routes = [
  {
    path: '/a',
    component: A_page
  },
  {
    path: '/b',
    component: B_page
  }
];

const router = createRouter({
  history: createWebHistory(),
  routes
});

export default router;
