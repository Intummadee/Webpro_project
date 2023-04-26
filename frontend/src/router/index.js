import Vue from 'vue'
import VueRouter from 'vue-router'

Vue.use(VueRouter)

const routes = [
  {
    path: '/',
    name: 'login',
    component: () => import('../views/Login.vue')
  },
  {
    path: '/Appointment/:userId',
    name: 'Appointment',
    component: () => import('../views/Appointment.vue')
  },
]

const router = new VueRouter({
  routes
})

export default router
