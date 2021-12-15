<template>
  <div class="gulu-radio">
    <button :class="{ 'gulu-selected': value }"
    @click="toggle"/>
    <span>{{ labels }}</span>
  </div>
</template>
<script lang="ts" setup="props, context">
import {SetupContext} from 'vue';

declare const props: { value: boolean, labels: string};
declare const context: SetupContext;
export default {
  props: {
    value: Boolean,
    labels: String
  },
};
export const toggle= ()=>{
  context.emit("update:value", !props.value);
}
</script>
<style lang="scss" scoped>
.gulu-radio{
  > button{
    width: 16px;
    height: 16px;
    border: 1px solid #d9d9d9;
    border-radius: 8px;
    background: #fff;
  }
}
</style>