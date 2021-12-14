<template>
  <main>
    <div class="topnavAndBanner">
      <Topnav menu-logo-visible />
      <div class="banner">
        <h1>MOON UI</h1>
        <h2>一个面向学习者的 UI 框架</h2>
        <p class="actions">
          <a href="https://github.com/HuangTbb/moon-ui-1">GitHub</a>
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
          <p>使用了 Vue 3 Composition API</p>
        </li>
        <li>
          <svg>
            <use xlink:href="#icon-ts"></use>
          </svg>
          <h3>基于 TypeScript</h3>
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
  </main>
</template>
<script lang="ts">
import Topnav from "../components/Topnav.vue";
export default {
  components: { Topnav },
};
</script>
<style lang="scss" scoped>
$button-background: linear-gradient(
        90deg,#3d7e7f  0%, #56c3bb 30%,#064968 100%
);
$text-color: #f3f3f0;
$border-radius: 20px;
$border-top: 3px solid #559283;
$li-background: linear-gradient(
        90deg,#006693  0%, #298c9d 40%, #3c7a79 100%
);
$box-shadow: 5px 10px 10px rgba(0,0,0,0.25);
$color: #ffda44;
main {
.topnavAndBanner {
    > .banner {
      padding: 100px 0 50px;
      display: flex;
      justify-content: center;
      align-items: center;
      flex-direction: column;
      color: $color;
      > .actions {
        padding:30px 0 10px;

        a {
          box-shadow: $box-shadow;
          border-top: $border-top ;
          margin: 0 20px;
          background: $button-background;
          color: $text-color;
          display: inline-block;
          padding: 8px 24px;
          border-radius: $border-radius;
          transition: all 250ms;
          &:hover {
            text-decoration: none;
            color: #fa0045;
            font-weight: bold;
            padding: 8px 28px;
          }
        }
      }
    }
  }
  .features {
    margin: 50px auto;
    > ul {
      display: flex;
      flex-wrap: wrap;
      justify-content: center;
      > li {
        width: 400px;
        margin: 16px;
        display: grid;
        justify-content: start;
        align-content: space-between;
        grid-template-areas:
          "icon title"
          "icon text";
        grid-template-columns: 80px auto;
        grid-template-rows: 1fr auto;
        border:2px solid #16b5ba;
        border-radius: 10px;
        background: $li-background;
        padding: 20px 30px;
        color: $text-color;
        box-shadow: 10px 10px 10px rgba(0,0,0,0.25);
        position: relative;
        &::before{
          content: "";
          width: 0;
          height: 0;
          border-top: 25px solid transparent;
          border-left: 25px solid #ffda44;
          border-bottom: 25px solid transparent;
          position: absolute;
          top: 50%;
          left: -2%;
          transform: translateY(-50%);
        }
        > svg {
          grid-area: icon;
          width: 64px;
          height: 64px;
        }

        > h3 {
          grid-area: title;
          font-size: 24px;
        }

        > p {
          grid-area: text;
        }
      }
    }
    @media (min-width: 800px) {
      width: 864px;
      > ul {
        justify-content: left;
      }
    }
    @media (min-width: 1200px) {
      width: 1296px;
    }
  }
}
</style>
