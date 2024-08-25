import { useAuth } from "vue-clerk"; // Убедись, что используешь правильный импорт

export function setupAuthGuard(router) {
  router.beforeEach((to, from, next) => {
    const auth = useAuth(); // Получаем объект с данными о пользователе

    if (to.meta.requiresAuth && !auth.isSignedIn.value) {
      next('/authPage'); // Перенаправление на страницу авторизации
    } else {
      next(); // Переход на запрашиваемую страницу
    }
  });
}
