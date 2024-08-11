<template>
  <div>
    <q-card-section
      class="text-white text-h3 text-center bg-primary full-width q-py-md"
    >
      ПОЛЕЗНЫЕ ССЫЛКИ
    </q-card-section>
    <div class="row justify-between q-mx-md">
      <div class="row no-wrap items-center">
        <q-btn
          href="https://minobrnauki.gov.ru/"
          target="blank"
          class="btn q-my-xl text-h6"
          >Сайт Министерства образования и науки</q-btn
        >
        <q-btn
          href="https://minobrnauki.gov.ru/"
          target="blank"
          class="btn_arrow q-ml-md text-h6"
          icon="keyboard_arrow_right"
        />
      </div>
      <div class="row no-wrap items-center">
        <q-btn
          href="https://ros-obrazovanie.ru/"
          target="blank"
          class="btn q-my-xl text-h6"
          >Сайт Рособразования</q-btn
        >
        <q-btn
          href="https://ros-obrazovanie.ru/"
          target="blank"
          class="btn_arrow q-ml-md text-h6"
          icon="keyboard_arrow_right"
        />
      </div>
    </div>
    <div class="q-mx-auto" style="max-width: 800px">
      <q-img src="links_img.svg" />
    </div>
    <div
      v-for="(link, index) in links"
      :key="index"
      class="row justify-between q-mx-md"
    >
      <div class="row no-wrap items-center">
        <q-btn :href="link.href" target="blank" class="btn q-my-xl text-h6">{{
          link.text
        }}</q-btn>
        <q-btn
          :href="link.href"
          target="blank"
          class="btn_arrow q-ml-md text-h6"
          icon="keyboard_arrow_right"
        />
      </div>
      <div class="row no-wrap items-center">
        <q-btn :href="link.href" target="blank" class="btn q-my-xl text-h6">{{
          link.text
        }}</q-btn>
        <q-btn
          :href="link.href"
          target="blank"
          class="btn_arrow q-ml-md text-h6"
          icon="keyboard_arrow_right"
        />
      </div>
    </div>
  </div>
</template>
<script setup>
    const links = [
        {href: '#', text: 'Сдесь могла быть ваша ссылка'},
        {href: '#', text: 'Сдесь могла быть ваша ссылка'},
        {href: '#', text: 'Сдесь могла быть ваша ссылка'},
        {href: '#', text: 'Сдесь могла быть ваша ссылка'},
        {href: '#', text: 'Сдесь могла быть ваша ссылка'},
        ]
</script>   
<style>
.btn,
.btn_arrow {
  background-color: #6daed9;
  color: white;
  max-width: 530px;
  padding: 0.5rem;
  border-radius: 16px;
  max-height: 50px;
}
.btn {
  min-width: 530px;
}
</style>
