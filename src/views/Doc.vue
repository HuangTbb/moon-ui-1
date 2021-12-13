<template>
  <div class="layout">
    <Topnav class="nav" toggle-menu-visible/>
    <div class="content">
      <aside v-if="menuVisible" class="aside">
        <h2>文档</h2>
        <ol>
          <li>
            <router-link to="/doc/intro">介绍</router-link>
          </li>
          <li>
            <router-link to="/doc/install">安装</router-link>
          </li>
          <li>
            <router-link to="/doc/get-started">开始使用</router-link>
          </li>
        </ol>
        <h2>组件列表</h2>
        <ol>
          <li>
            <router-link to="/doc/switch">Switch 组件</router-link>
          </li>
          <li>
            <router-link to="/doc/button">Button 组件</router-link>
          </li>
          <li>
            <router-link to="/doc/dialog">Dialog 组件</router-link>
          </li>
          <li>
            <router-link to="/doc/tabs">Tabs 组件</router-link>
          </li>
        </ol>
      </aside>
      <main>
        <router-view />
      </main>
    </div>
  </div>
</template>
<script lang="ts">
import Topnav from "../components/Topnav.vue";
import {inject, onMounted, onUpdated, Ref} from 'vue';
export default {
  components: {
    Topnav,
  },
  setup() {
    const menuVisible = inject<Ref<boolean>>("menuVisible");
    onMounted(()=>{
      const topnav = document.querySelector('.topnav')
      onUpdated(()=>{
        const aside: HTMLElement = document.querySelector('.aside')
        if(aside!== null){
          console.log(aside)
          aside.style.top = topnav.clientHeight + 'px'
        }
      })
    })
    return { menuVisible };
  },

};
</script>
<style lang="scss" scoped>
.layout {
  display: flex;
  flex-direction: column;
  height: 100vh;
  > .nav {
    flex-shrink: 0;
  }
  > .content {
    flex-grow: 1;
    padding-top: 60px;
    padding-left: 156px;
    display: flex;
    color:#e2e2e2;
    > aside {
      flex-shrink: 0;
      background: rgba(6, 73, 104,0.8);
      width: 150px;
      position: fixed;
      top: 62px;
      left: 0;
      height: 100%;
      z-index: 1;
      border-top: 2px solid #088391;
      border-right: 2px solid #088391;
      border-radius: 12px;
      padding-top: 20px;
      > h2 {
        margin-bottom: 4px;
        padding-left: 16px;
      }
      > ol {
        margin-bottom: 6px;
        > li {
          padding: 4px 0;
          > a{
            padding: 4px 16px;
            display: block;
            &:hover{
              text-decoration: none;
            }
          }
          > .router-link-active{
            background: linear-gradient(90deg, #42807b 50%, #005076 100% );
            border-top: 2px solid #088391;
            border-bottom: 2px solid #088391;
            border-top-right-radius: 8px;
            border-bottom-right-radius: 8px;
            color: #fa0045;
          }
        }
      }
      @media (max-width: 500px) {
        background: rgba(6, 73, 104,1);
      }
    }
    > main {
      flex-grow: 1;
      padding: 16px;
      background: rgba(6, 73, 104,0.8);
      overflow: auto;
      h1,h2{
        color: #e2e2e2;
      }

    }
    @media (max-width: 500px) {
      padding-left: 0;
    }
  }
}
</style>
