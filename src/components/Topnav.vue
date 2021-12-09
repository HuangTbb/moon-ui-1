<template>
  <div class="topnav">
    <router-link to="/" class="logo">
      <svg class="icon">
        <use xlink:href="#icon-xingxing1"></use>
      </svg>
    </router-link>
    <svg class="toggleAside" @click="toggleMenu"  v-if="toggleMenuVisible">
      <use xlink:href="#icon-menu"></use>
    </svg>
    <div class="menu" v-if="menuLogoVisible">
      <router-link to="/doc/intro">文档</router-link>
    </div>
  </div>
</template>
<script lang="ts">
import {inject, Ref} from 'vue';
export default {
  props:{
    toggleMenuVisible: {
      type: Boolean,
      default: false
    },
    menuLogoVisible: {
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
  }
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
    margin: 0 1em;
  }
  > .toggleAside {
    width: 28px;
    height: 28px;
    position: absolute;
    left: 16px;
    top: 50%;
    transform: translateY(-50%);
    display: none;
  }
  @media (max-width: 500px) {
    background: #fff;
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
