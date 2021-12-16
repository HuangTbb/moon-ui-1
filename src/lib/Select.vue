<template>
  <div class="gulu-select-wrapper" @click="openList">
    <div class="gulu-select" :class="{'active': active}" @click="active = true" ref="guluSelect">
      <div>Jack</div>
      <svg class="icon">
        <use xlink:href="#icon-select"></use>
      </svg>
    </div>
    <ul class="gulu-select-list">
      <li>Jack</li>
      <li>Lucy</li>
      <li>Lisa</li>
    </ul>
  </div>
</template>
<script lang="ts">
import {ref} from 'vue';

export default {
  setup(){
    const active = ref(false)
    const guluSelect = ref<HTMLDivElement>(null)
    const openList = () => {
      guluSelect.value.className
    }
    return {active, openList, guluSelect}
  }
}
</script>
<style lang="scss" scoped>
.gulu-select-wrapper{
  width: 120px;
  cursor: pointer;
  font-size: 14px;
  color: #595959;
  line-height: 30px;
  .gulu-select-list{
    border-radius: 5px;
    margin-top: 2px;
    padding: 4px 0;
    box-shadow: 0 2px 5px rgba(0,0,0,0.2);
    > li {
      padding-left: 11px;
      &:hover{
        background: #e6f7ff;
      }
    }
  }
  > .gulu-select{
    border: 1px solid #d9d9d9;
    display: flex;
    align-items: center;
    justify-content: space-between;
    border-radius: 5px;
    transition: all 250ms;
    &:hover{
      border: 1px solid #1890ff;
    }
    &.active{
      border: 1px solid #1890ff;
      box-shadow: 0 0 4px rgba(24, 144, 255, 0.6);
    }
    > div {
      margin: 0 24px 0 11px;

    }
    > .icon{
      color: #bfbfbf;
      margin-right: 11px;
    }
  }
}
</style>