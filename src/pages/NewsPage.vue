<template>
    <q-card class="lineral q-pa-xl">
        <q-container class="q-mb-xl">
        <q-card class="my-card">
            <q-card-section class="text-white text-h4 text-center bg-primary full-width text-bold q-py-md">
              ОБУЧЕНИЕ
            </q-card-section>
            <q-card-section>
              <q-card-section  class="flex row no-wrap">
                <img src="IndexPage/Card_img1.svg">
                <q-card class="q-ma-md card_radius text-bold q-pt-xl text-h5 text-justify">
                  <q-card-section>
                    Обучение студентов инвалидов - это истинное проявление человечности, заботы и важности равенства возможностей. Это процесс, который требует не только терпения и понимания, но и индивидуального подхода к каждому студенту, учитывая их особенности и потребности.
                  </q-card-section>
                  <q-expansion-item v-model="openFirstItem" header-class="text-blue" label="Читать далее..." v-if="openFirstItem==false"/>
                </q-card>
              </q-card-section>
              <q-card-section class="flex row no-wrap" v-if="openFirstItem==true">
                <q-card class="q-ma-md card_radius text-bold q-pt-xl text-h5 text-justify" v-if="openFirstItem==true">
                  <q-card-section>
                    Каждый шаг на этом пути наполнен уважением к личным достоинством и стремлением помочь студентам найти свое место в мире знаний и профессионального успеха. Обучение инвалидов дает им возможность развивать свои таланты, культурные способности и навыки, открывая новые горизонты и преодолевая препятствия.
                  </q-card-section>
                </q-card>
                <img src="newsFirst_2.svg" v-if="openFirstItem==true">
              </q-card-section>
                <q-card-section class="flex row no-wrap" v-if="openFirstItem==true">
                  <img src="newsFirst_3.svg" class="q-mr-xl">
                <q-card class="q-ma-md card_radius text-bold q-pt-xl text-h5 text-justify">
                  <q-card-section>
                    Ценность обучения студентов инвалидов заключается не только в их личном росте и самореализации, но и в их способности внести свой вклад в общество, принести пользу другим и стать вдохновением для всех вокруг. Это истинное искусство учить и учиться вместе, создавая мир, где каждый имеет возможность раскрыть свой потенциал и быть признанным за свои уникальные способности.
                  </q-card-section>
                  <q-expansion-item v-model="openFirstItem" header-class="text-blue" label="Скрыть"/>
                </q-card>
                </q-card-section>
                
            </q-card-section>
    </q-card>
    <q-card class="my-card">
            <q-card-section class="text-white text-h4 text-center bg-primary full-width text-bold q-py-md">
              ОБЩЕНИЕ
            </q-card-section>
            <q-card-section>
              <q-card-section  class="flex row no-wrap">
                <img src="IndexPage/Card_img2.svg">
                <q-card class="q-ma-md card_radius text-bold q-pt-xl text-h5 text-justify">
                  <q-card-section>
                    Общение между людьми инвалидами имеет особенно важное значение, так как оно помогает им чувствовать себя поддержанными, понимаемыми и важными. Встречи с другими людьми, столкнувшимися с подобными трудностями, позволяют почувствовать себя частью сообщества, где их проблемы и переживания понимают и принимают 
                  </q-card-section>
                  <q-expansion-item v-model="openSecondItem" header-class="text-blue" label="Читать далее..." v-if="openSecondItem==false"/>
                </q-card>
              </q-card-section>
                <q-card-section class="flex row no-wrap" v-if="openSecondItem==true">
                  <q-card class="q-ma-md card_radius text-bold q-pt-xl text-h5 text-justify">
                    <q-card-section>
                      Общение между инвалидами также способствует обмену опытом, советами и поддержкой в решении повседневных проблем. Они могут делиться своими успехами и трудностями, находить вдохновение и мотивацию в историях других людей со схожими жизненными обстоятельствами.
                    </q-card-section>
                    <q-expansion-item v-model="openSecondItem" header-class="text-blue" label="Скрыть"/>
                  </q-card>
                  <img src="newsSecond_2.png" class="q-mr-xl">
                </q-card-section>
            </q-card-section>
    </q-card>
    <q-card class="my-card">
            <q-card-section class="text-white text-h4 text-center bg-primary full-width text-bold q-py-md">
              ТВОРЧЕСТВО
            </q-card-section>
            <q-card-section>
              <q-card-section  class="flex row no-wrap">
                <img src="IndexPage/Card_img3.svg">
                <q-card class="q-ma-md card_radius text-bold q-pt-xl text-h5 text-justify">
                  <q-card-section>
                    Творчество людей с инвалидностью играет важную роль в культурной жизни общества, демонстрируя их талант и уникальный взгляд на мир. Такие художники, музыканты, писатели и актеры часто преодолевают значительные трудности, чтобы поделиться своим искусством, что вдохновляет и мотивирует других.
                  </q-card-section>
                  <q-expansion-item v-model="openThirdItem" header-class="text-blue" label="Читать далее..." v-if="openThirdItem==false"/>
                </q-card>
              </q-card-section>
                <q-card-section class="flex row no-wrap" v-if="openThirdItem==true">
                  <q-card class="q-ma-md card_radius text-bold q-pt-xl text-h5 text-justify">
                    <q-card-section>
                      Lorem ipsum dolor sit amet consectetur adipisicing elit. At vel ut vitae aliquam nulla fuga, cupiditate amet unde praesentium aperiam itaque, magni iure veniam consequatur, a corrupti voluptatem eaque veritatis pariatur velit voluptatibus accusantium! Expedita dicta odio magnam eius velit nobis esse, impedit molestiae sint veniam repellendus eum similique tempore.
                    </q-card-section>
                    <q-expansion-item v-model="openThirdItem" header-class="text-blue" label="Скрыть"/>
                  </q-card>
                  <img src="newsSecond_2.png" class="q-mr-xl">
                </q-card-section>
            </q-card-section>
    </q-card>
        </q-container>
</q-card>
</template>

<script setup>
import { ref} from 'vue';

const openFirstItem = ref(false)
const openSecondItem = ref(false)
const openThirdItem = ref(false)

</script>

<style scoped>
.my-card{
  width: 100%;
  background-color: #C4D2EB;
  border: 6px solid;
  border-color: #8BDD76;
  border-radius: 20px;
}
.lineral{
  background: -webkit-linear-gradient(247deg, #7196ce,#394c68);                      
  background: linear-gradient(247deg, #7196ce,#394c68);                   
}
</style>