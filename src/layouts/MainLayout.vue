<template>
  <q-layout view="hHh lpR fFf">
    <q-header elevated class="bg-primary text-white flex" height-hint="98">
      <q-toolbar class="q-mw-100 container q-mx-auto justify-around">
        <q-toolbar-title
          class="flex q-py-sm justify-between items-center toolbar-logo"
        >
          <q-avatar class="logo">
            <img src="logo.svg" />
          </q-avatar>
          <q-avatar class="university_logo">
            <img src="CFU.svg" />
          </q-avatar>
          <q-avatar class="university_logo">
            <img src="GPA.svg" />
          </q-avatar>
        </q-toolbar-title>
        <q-container align="right">
          <q-tabs inline-label>
            <q-tab
              class="q-mx-sm"
              name="location"
              icon="location_on"
              label="Ялта, ул. Стахановская, д. 11"
            />
            <q-tab
              class="q-mx-sm"
              name="phone"
              icon="local_phone"
              label="+7(999)999-99-99"
            />
            <q-btn class="q-mx-sm">Авторизация</q-btn>
          </q-tabs>
          <q-tabs class="text-right">
            <q-route-tab to="/" label="ГЛАВНАЯ" />
            <q-route-tab to="/aboutPage" label="О НАС" />
            <q-route-tab to="/newsPage" label="НОВОСТИ" />
            <q-route-tab to="/page3" label="НБП" />
            <q-route-tab to="/page3" label="ЧаВо" />
            <q-route-tab to="/page3" label="Линки" />
          </q-tabs>
        </q-container>
      </q-toolbar>
    </q-header>

    <q-page-container style="padding-bottom: 0px" class="container q-mx-auto">
      <router-view />
    </q-page-container>

    <q-footer elevated class="bg-primary-8 footer_style text-white">
      <q-toolbar class="container flex q-mx-auto justify-around">
        <q-toolbar-title class="flex column">
          <q-avatar class="logo">
            <img src="logo.svg" />
          </q-avatar>
          <q-item class="">
            <q-avatar class="footer_universiry_logo">
              <img src="CFU.svg" />
            </q-avatar>
            <q-avatar class="footer_universiry_logo">
              <img src="GPA.svg" />
            </q-avatar>
          </q-item>
          <div class="">&#169; 2024 ОВЗКОМПАС.РФ</div>
        </q-toolbar-title>
        <q-tabs vertical class="">
          <q-route-tab to="/" label="Главная" />
          <q-route-tab to="/aboutPage" label="О нас" />
          <q-route-tab to="/newsPage" label="Новости" />
          <q-route-tab to="/page3" label="Нормативно-правовая база" />
          <q-route-tab to="/page3" label="Часто-задаваемые вопросы" />
          <q-route-tab to="/page3" label="Полезные ссылки" />
        </q-tabs>
        <q-container>
          <q-item class="text-">Контакты</q-item>
          <q-list>
            <q-item>+7(999)999-99-99</q-item>
            <q-item>Заказать звонок</q-item>
            <q-item>mail@mail.ru</q-item>
          </q-list>
        </q-container>
      </q-toolbar>
    </q-footer>
  </q-layout>
</template>

<style scoped>
.container {
  max-width: 1440px;
}
.toolbar-logo {
  max-width: 500px;
}
.logo {
  width: 150px;
  height: 70px;
  max-width: 150px;
  max-height: 70px;
}
.university_logo {
  width: 120px;
  height: 95px;
}
.footer_universiry_logo {
  width: 62px;
  height: 50px;
}
.flex-center {
  justify-content: start;
}
.q-toolbar__title {
  flex: none;
}
.fixed-bottom {
  position: static;
}
</style>
