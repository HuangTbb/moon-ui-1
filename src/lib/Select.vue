<template>
  <div class="gulu-select-wrapper"
       @click="changeStyle"
       :style="'width:'+ width + 'px; line-height:'+ height+ 'px'">
    <div class="gulu-select" :class="{'active': active}" ref="guluSelect">
      <div>{{ initial }}</div>
      <svg class="icon" :class="{'rotate': rotate}">
        <use xlink:href="#icon-select"></use>
      </svg>
    </div>
    <ul class="gulu-select-list" v-if="listVisible">
      <li  v-for="item in values" key="item" @click="changeDefaultValue(item)">{{item}}</li>
    </ul>
  </div>
</template>
<script lang="ts">
import {ref} from 'vue';
export default {
  props: {
    values: Array,
    initial: String,
    width: String,
    height: String,
  },
  setup(props, context){
    const active = ref(false)
    const listVisible = ref(false)
    const rotate = ref(false)
    const changeDefaultValue = (item) =>{
      context.emit("update:initial", item)
    }
    const changeStyle = ()=>{
      active.value = true;
      listVisible.value = !listVisible.value;
      rotate.value = !rotate.value
    }
    return {active, listVisible, rotate, changeDefaultValue, changeStyle}
  }
};
</script>
<style lang="scss" scoped>
.gulu-select-wrapper{
  width: 120px;
  cursor: pointer;
  font-size: 14px;
  color: #595959;
  line-height: 30px;
  user-select: none;
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
      transition: all 250ms;
      &.rotate{
        transform: rotate(180deg);
      }
    }
  }
}
</style>