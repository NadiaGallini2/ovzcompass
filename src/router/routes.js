const routes = [
  {
    path: '/',
    component: () => import('layouts/MainLayout.vue'),
    children: [
      { path: '', component: () => import('pages/IndexPage.vue') },
      { path: '/aboutPage', component: () => import('pages/AboutPage.vue') },
      { path: '/newsPage', component: () => import('pages/NewsPage.vue'), meta: {requiresAuth: true} },
      { path: '/npbPage', component: () => import('pages/NPBPage.vue'), meta: { requiresAuth: true } },
      { path: '/chavoPage', component: () => import('pages/ChAVOPage.vue'), meta: { requiresAuth: true } },
      { path: '/linksPage', component: () => import('pages/LinksPage.vue'), meta: { requiresAuth: true } },
      { path: '/authPage', component: () => import('pages/AuthPage.vue') },
      { path: '/signupPage', component: () => import('pages/SignUpPage.vue') },
    ]
  },

  // Always leave this as last one,
  // but you can also remove it
  {
    path: '/:catchAll(.*)*',
    component: () => import('pages/ErrorNotFound.vue')
  }
]


export default routes;

