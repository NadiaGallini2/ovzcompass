import { defineStore } from 'pinia';
import { ref, watch } from 'vue';
import { useAuth } from 'vue-clerk';

export const useAuthStore = defineStore('auth', () => {
  const { isSignedIn } = useAuth();
  const authStatus = ref(isSignedIn.value);

  watch(() => isSignedIn.value, (newValue) => {
    authStatus.value = newValue;
  });

  return { authStatus };
});