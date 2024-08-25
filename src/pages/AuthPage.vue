<template>
  <q-card-section class="row no-wrap justify-center">
    <q-card-section class="column justify-center">
      <q-card-section class="text-h5 text-bold q-px-md q-pb-none text-center"
        >Добро пожаловать в ОВЗКОМПАС</q-card-section
      >
      <q-card-section class="text-grey q-px-md q-py-sm text-center"
        >Используйте Вашу учетную запись, чтобы войти</q-card-section
      >
      <q-form @submit.prevent="handleAuth" @reset="onReset" class="q-gutter-md">
        <q-input
          filled
          type="email"
          v-model="email"
          label="Your email *"
          hint="Please type your email"
          lazy-rules
        />

        <q-input v-model="password" filled :type="isPwd ? 'password' : 'text'"
        label="Your password *" hint="Please type your password">
        <template v-slot:append>
          <q-icon
            :name="isPwd ? 'visibility_off' : 'visibility'"
            class="cursor-pointer"
            @click="isPwd = !isPwd"
          />
        </template>
      </q-input>

        <q-toggle v-model="accept" label="I accept the license and terms" />

        <div>
          <q-btn :disable="isSubmitDisabled" label="Войти" type="submit" color="primary" />
          <q-btn
            label="Удалить"
            type="reset"
            color="primary"
            flat
            class="q-ml-sm"
          />
        </div>
        <q-card-section class="flex items-center justify-center">
          <q-card-section class="text-grey q-px-none q-py-sm text-center"
          >У вас нет аккаунта?</q-card-section> <q-tabs><q-route-tab  class="text-blue q-px-sm" to="/signupPage" label="Зарегистрироваться"></q-route-tab></q-tabs>
        </q-card-section>
        </q-form>
    </q-card-section>
    <q-img src="Login_img.svg" style="max-width: 500px" />
  </q-card-section>
</template>

<script setup>
import { ref, computed, nextTick, watch } from "vue";
import { useSignIn, useClerk } from "vue-clerk";
import { useRouter } from "vue-router";

const email = ref('');
const password = ref('');
const accept = ref(false);
const isPwd = ref(true);
const router = useRouter();
const {setActive} = useClerk();
const { isLoaded, signIn, session } = useSignIn();

const isSubmitDisabled = computed(() => {
  return !email.value || !password.value || !accept.value;
});

const handleAuth = async () => {
  if (!isLoaded.value) {
    console.log('Clerk is not loaded yet');
    return;
  }

  try {
    const signInAttempt = await signIn.value?.create({
      identifier: email.value,
      password: password.value,
    });

    console.log('SignIn attempt:', signInAttempt);
    console.log('SignIn status:', signInAttempt?.status);

    if (signInAttempt?.status === 'complete') {
      setActive({
        session: signInAttempt.createdSessionId,
      })
      router.push('/');
    } else {
      console.error('Authentication not completed', signInAttempt?.status);
    }
  } catch (error) {
    console.error('Authentication error', error);
  }
};

const onReset = () => {
  email.value = '';
  password.value = '';
  accept.value = false;
};

</script>


<style scoped>
.q-tab{
  text-transform: none !important;
}
</style>