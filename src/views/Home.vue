<template>
  <div class="topnavAndBanner">
    <Topnav menu-logo-visible/>
    <div class="banner">
      <h1>STARTS UI</h1>
      <h2>一个厉害的UI框架</h2>
      <p class="actions">
        <a href="https://github.com/HuangTbb/starts-ui">GitHub</a>
        <router-link to="/doc">开始</router-link>
      </p>
    </div>
  </div>
  <div class="features">
    <ul>
      <li>
        <svg>
          <use xlink:href="#icon-vue"></use>
        </svg>
        <h3>基于 Vue 3</h3>
        <p>骄傲地使用了 Vue 3 Composition API</p>
      </li>
      <li>
        <svg>
          <use xlink:href="#icon-ts"></use>
        </svg>
        <h3>基于 TypeScript </h3>
        <p>源代码采用 TypeScript 书写（非严格检查）</p>
      </li>
      <li>
        <svg>
          <use xlink:href="#icon-lights"></use>
        </svg>
        <h3>代码易读</h3>
        <p>每个组件的源代码都极其简洁</p>
      </li>
    </ul>
  </div>
</template>
<script lang="ts">
import Topnav from "../components/Topnav.vue";
export default {
  components: {Topnav},
}
</script>
<style lang="scss" scoped>
$button-color: #02bcb0;
$border-radius: 4px;
$color: #0f9c95;
.topnavAndBanner{
  background: linear-gradient(145deg, rgba(227,255,253,1) 0%, rgba(183,233,230,1) 100%);
  clip-path: ellipse(80% 60% at 50% 40%);
  > .banner {
    padding: 100px 0;
    display: flex;
    justify-content: center;
    align-items: center;
    flex-direction: column;
    color: $color;
    > .actions{
      padding: 8px 0;
      a {
        margin:0 8px;
        background: $button-color;
        color: #fff;
        display: inline-block;
        padding: 8px 24px;
        border-radius: $border-radius;
        &:hover{
          text-decoration: none;
        }
      }
    }
  }
}
.features{
  margin: 64px auto;
  > ul {
    display: flex;
    flex-wrap: wrap;
    justify-content: center;
    > li {
      width: 400px;
      margin: 16px 0;
      display: grid;
      justify-content: start;
      align-content: space-between;
      grid-template-areas:
        "icon title"
        "icon text";
      grid-template-columns: 80px auto;
      grid-template-rows: 1fr auto;

      > svg {
        grid-area: icon;
        width: 64px;
        height: 64px;
      }

      > h3 {
        grid-area: title;
        font-size: 28px;
      }

      > p {
        grid-area: text
      }
    }
  }
  @media (min-width: 800px) {
    width: 800px;
    > ul {
      justify-content: left;
    }
  }
  @media (min-width: 1200px) {
    width: 1200px;
  }
}
</style>