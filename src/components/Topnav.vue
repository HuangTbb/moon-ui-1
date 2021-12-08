<template>
  <div class="topnav">
    <div class="logo">
      <svg class="icon" aria-hidden="true">
      <use xlink:href="#icon-xingxing1"></use>
    </svg>
    </div>
    <span class="toggleAside" @click="toggleMenu"  v-if="toggleMenuVisible"></span>
    <ul class="menu">
      <li>
        <router-link to="/doc">文档</router-link>
      </li>
    </ul>
  </div>
</template>
<script lang="ts">
import { inject, Ref } from "vue";
export default {
  props:{
    toggleMenuVisible: {
      type: Boolean,
      default: false
    }
  },
  setup() {
    const menuVisible = inject<Ref<boolean>>("menuVisible");
    const toggleMenu = () => {
      menuVisible.value = !menuVisible.value;
    };
    return { toggleMenu };
  },
};
</script>
<style lang="scss" scoped>
$color: #0f9c95;
.topnav {
  color: $color;
  display: flex;
  padding: 16px;
  position: fixed;
  top: 0;
  left: 0;
  width: 100%;
  z-index: 10;
  align-items: center;
  justify-content: center;
  > .logo {
    max-width: 6em;
    margin-right: auto;
    > .icon{
      width: 1.6em;
      height: 1.6em;
    }
  }
  > .menu {
    display: flex;
    white-space: nowrap;
    flex-wrap: nowrap;
    > li {
      margin: 0 1em;
    }
  }
  > .toggleAside {
    width: 24px;
    height: 24px;
    background: red;
    position: absolute;
    left: 16px;
    top: 50%;
    transform: translateY(-50%);
    display: none;
  }
  @media (max-width: 500px) {
    > .logo {
      margin: 0 auto;
    }
    > .menu {
      display: none;
    }
    > .toggleAside {
      display: inline-block;
    }
  }
}
</style>
