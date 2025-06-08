import { createRouter, createWebHistory } from 'vue-router'
import HomeView from '../views/HomeView.vue'
import { useUserStore } from '../stores/user'
// const user_store = useUserStore();
const router = createRouter({
  history: createWebHistory(import.meta.env.BASE_URL),
  routes: [
    {
      path: '/',
      name: 'home',
      component: HomeView
    },
    {
      path: '/shop',
      name: 'shop',
      component:()=>import('../views/shopView.vue')
    },
    {
      path: '/about-us',
      name: 'about-us',
      component:()=>import('../views/AboutView.vue')
    },
    {
      path: '/contact_us',
      name: 'contact_us',
      component:()=>import('../views/ContactView.vue')
    },
    {
      path: '/login',
      name: 'login',
      component:()=>import('../views/LoginView.vue'),
      meta:{
        Auth:true
      }
    },
   
    {
      path: '/:path(.*)',
      name: 'not_found',
      component:()=>import('../views/NotFoundView.vue')
    },
    {
      path: '/account',
      name: 'account',
      component:()=>import('../views/AccountView.vue'),
      meta:{
        Auth:true
      }
    },
    {
      path: '/register',
      name: 'register',
      component:()=>import('../views/RegisterView.vue')
    },{
      path: '/my_services',
      name: 'my_services',
      component:()=>import('../views/MyServicesView.vue'),
      meta:{
        Auth:true
      }
     
    },
    {
      path: '/user/services/:id?',
      name: 'user_services',
      component:()=>import('../views/UserServicesView.vue'),
      meta:{
        Auth:true
      }
    },
    
   
  ]
})

router.beforeEach(to =>{
  if(to.meta.Auth){
     const user_store = useUserStore();
     if(!user_store.user.value){
      router.push('/login');
     }
    
  }

  if(to.meta.Guest){
    const user_store = useUserStore();
    if(user_store.user.value){
     router.push('/');
    }}
})
export default router
