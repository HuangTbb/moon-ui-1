<template>
  <router-view />
</template>

<script>
import { provide, ref } from 'vue'
export default {
  name: 'App',
  setup(){
    const menuVisible = ref(true)
    provide('menuVisible', menuVisible)
  }
}
</script>
