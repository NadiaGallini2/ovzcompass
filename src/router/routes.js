const routes = [
  {
    path: '/',
    component: () => import('layouts/MainLayout.vue'),
    children: [
      { path: '', component: () => import('pages/IndexPage.vue') },
      { path: '/aboutPage', component: () => import('pages/AboutPage.vue') },
      { path: '/newsPage', component: () => import('pages/NewsPage.vue') },
      { path: '/npbPage', component: () => import('pages/NPBPage.vue') },


    ]
  },

  // Always leave this as last one,
  // but you can also remove it
  {
    path: '/:catchAll(.*)*',
    component: () => import('pages/ErrorNotFound.vue')
  }
]

export default routes
