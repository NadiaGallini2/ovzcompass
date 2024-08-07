<template>
  <q-page class="flex justify-center ">
    <q-sections class="lineral full-width text-center">
      <img class="q-mx-auto" src="IndexPage/MainFotoIndexPage.svg" alt="">
    </q-sections>
    <q-section class="text-white text-h4 text-center lineral q-py-sm">
      Интеллектуальная система для автоматизации формирования социально-психологической карты студентов с инвалидностью
    </q-section>
    <q-section class="text-white text-h4 text-center bg-primary full-width text-bold q-py-md">
      О НАС
    </q-section>
    <q-card>
      <q-card-section class="text-h5 text-bold">Сформированные социально-психологические карты помогут сотрудникам вуза лучше понять потребности студентов с инвалидностью, обеспечивая более эффективную поддержку, что позволит создать благоприятные условия для их адаптации и успешного обучения в вузе.</q-card-section>
      <q-card-section class="text-h5 text-bold q-mb-md">
        Наша интеллектуальная система для автоматизации формирования социально-психологической карты студентов с инвалидностью не только облегчает процесс адаптации, но и подчеркивает их творческий потенциал. Мы верим, что каждый студент, независимо от физических ограничений, способен раскрыть свои таланты и внести значительный вклад в культурную жизнь общества.
      </q-card-section>
      <q-card-section>
        <a class="link_decoration" href="#">Читать далее...</a>
      </q-card-section>
  </q-card>
  <q-section class="text-white text-h4 text-center bg-primary full-width text-bold q-py-md">
      НОВОСТИ
    </q-section>

    <q-container class="flex justify-around full-width">
    <q-card class="my-card q-mt-xl">
      <img src="IndexPage/Card_img1.svg">
      <q-card-section class="text-white text-h4 text-center bg-primary full-width text-bold q-py-md">
        ОБУЧЕНИЕ
      </q-card-section>
      <q-card class="q-ma-md card_radius">
        <q-card-section class="text-bold">
          Обучение студентов инвалидов - это истинное проявление человечности, заботы и важности равенства возможностей. Это процесс, который требует не только терпения и понимания, но и индивидуального подхода к каждому студенту, учитывая их особенности и потребности.
        </q-card-section>
        <q-card-section>
          <a href="#">Читать далее...</a>
        </q-card-section>
      </q-card>
    </q-card>

    <q-card class="my-card q-mt-xl">
      <img src="IndexPage/Card_img2.svg">
      <q-card-section class="text-white text-h4 text-center bg-primary full-width text-bold q-py-md">
        ОБЩЕНИЕ
      </q-card-section>
      <q-card class="q-ma-md card_radius">
        <q-card-section class="text-bold">
          Общение между людьми инвалидами имеет особенно важное значение, так как оно помогает им чувствовать себя поддержанными, понимаемыми и важными. Встречи с другими людьми, столкнувшимися с подобными трудностями, позволяют почувствовать себя частью сообщества, где их проблемы и переживания понимают и принимают.
        </q-card-section>
        <q-card-section>
          <a href="#">Читать далее...</a>
        </q-card-section>
      </q-card>
    </q-card>

    <q-card class="my-card q-mt-xl">
      <img src="IndexPage/Card_img3.svg">
      <q-card-section class="text-white text-h4 text-center bg-primary full-width text-bold q-py-md">
        ТВОРЧЕСТВО
      </q-card-section>
      <q-card class="q-ma-md card_radius">
        <q-card-section class="text-bold">
          Творчество людей с инвалидностью играет важную роль в культурной жизни общества, демонстрируя их талант и уникальный взгляд на мир. Такие художники, музыканты, писатели и актеры часто преодолевают значительные трудности, чтобы поделиться своим искусством, что вдохновляет и мотивирует других.
        </q-card-section>
        <q-card-section>
          <a href="#">Читать далее...</a>
        </q-card-section>
      </q-card>
    </q-card>
  </q-container>

  </q-page>
</template>

<script setup>
defineOptions({
  name: 'IndexPage'
});
</script>

<style scoped>
.lineral{
  background: -webkit-linear-gradient(247deg, #7196ce,#394c68);                      
  background: linear-gradient(247deg, #7196ce,#394c68);                   
}
.link_decoration{
  text-decoration: none;
  color: rgb(68, 68, 160);
  font-size: 22px;
}
.my-card{
  width: 100%;
  max-width: 420px;
  background-color: #C4D2EB;
  border: 6px solid;
  border-color: #8BDD76;
  border-radius: 20px;
}


</style>