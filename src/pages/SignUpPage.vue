<template>
  <q-card-section class="row no-wrap justify-center">
    <q-card-section class="column justify-center">
      <q-card-section class="text-h5 text-bold q-px-md q-pb-none text-center"
        >Добро пожаловать в ОВЗКОМПАС</q-card-section
      >
      <q-card-section class="text-grey q-px-md q-py-sm text-center"
        >Регистрация аккаунта</q-card-section
      >
      <q-form @submit="onSubmit" class="q-gutter-md">
        <q-input
          ref="nameRef"
          filled
          v-model="name"
          label="Your name *"
          hint="Please type your name"
          lazy-rules
          :rules="nameRules"
        />

        <q-input
          filled
          v-model="surname"
          label="Your surname *"
          hint="Please type your surname"
          lazy-rules
          :rules="nameRules"
        />

        <q-input
          filled
          v-model="fathername"
          label="Your fathername *"
          hint="Please type your fathername"
          lazy-rules
        />

        <q-input
          ref="ageRef"
          filled
          type="number"
          v-model="age"
          hint="Please type your age"
          label="Your age *"
          lazy-rules
          :rules="ageRules"
        />

        <q-input
          filled
          type="email"
          v-model="email"
          label="Your email *"
          hint="Please type your email"
          lazy-rules
        />

        <q-input
          v-model="password"
          filled
          :type="isPwd ? 'password' : 'text'"
          label="Your password *"
          hint="Please type your password"
        >
          <template v-slot:append>
            <q-icon
              :name="isPwd ? 'visibility_off' : 'visibility'"
              class="cursor-pointer"
              @click="isPwd = !isPwd"
            />
          </template>
        </q-input>
        <q-card-section class="column justify-center items-center">
            <q-toggle v-model="accept" label="I accept the license and terms" />
            <q-btn :disable="isSubmitDisabled" label="Регистрация" type="submit" color="primary" />
        </q-card-section>
      </q-form>
    </q-card-section>
    <q-img src="Registr_img.svg" style="max-width: 800px" />
  </q-card-section>
</template>

<script setup>
import { ref, computed } from "vue";
import { useQuasar } from "quasar";

const name = ref(null);
const nameRef = ref(null);
const age = ref(null);
const ageRef = ref(null);
const surname = ref("");
const fathername = ref("");
const email = ref("");
const password = ref("");
const isPwd = ref(true);
const $q = useQuasar();
const accept = ref(false)



const nameRules = [(val) => (val && val.length > 0) || "Please type something"];
const ageRules = [
  (val) => (val !== null && val !== "") || "Please type your age",
  (val) => (val > 0 && val < 100) || "Please type a real age",
];

const isSubmitDisabled = computed(() => {
  return !email.value || !password.value || name.value;
});

const onSubmit = () => {
    nameRef.value.validate();
    ageRef.value.validate();
    if (nameRef.value.hasError || ageRef.value.hasError) {
          // form has error
        }
        else if (accept.value !== true) {
          $q.notify({
            color: 'negative',
            message: 'You need to accept the license and terms first'
          })
        }
        else {
          $q.notify({
            icon: 'done',
            color: 'positive',
            message: 'Submitted'
          })
        }
};

const onReset = () => {
  email.value = "";
  password.value = "";
  accept.value = false;
};
</script>
