<template>
  <div class="gulu-tabs" :class="classes">
    <div class="gulu-tabs-nav" ref="container">
      <div
        class="gulu-tabs-nav-item"
        v-for="(t, index) in titles"
        :ref="
          (el) => {
            if (t === selected) selectedItem = el;
          }
        "
        :class="{ selected: t === selected }"
        @click="select(t)"
        :key="index"
      >
        {{ t }}
      </div>
      <div class="gulu-tabs-nav-indicator" ref="indicator"></div>
    </div>
    <div class="gulu-tabs-content">
      <component :is="current" :key="current.props.title" />
    </div>
  </div>
</template>
<script lang="ts" setup="props, context">
import Tab from "./Tab.vue";
import {
  computed,
  onMounted,
  ref,
  watchEffect,
  SetupContext,
  Component,
} from "vue";
declare const props: {
  selected: string ,
  position?: 'top' | 'bottom' | 'left' | 'right',
};
declare const context: SetupContext;
export default {
  props: {
    selected: {
      type: String,
      default: '导航1'
    },
    position: {
      type: String,
      default: 'top'
    }
  },
};
const { position } = props;
export const classes = computed(() => {
  return {
    [`gulu-position-${position}`]: position
  };
});
export const selectedItem = ref<HTMLDivElement>(null);
export const indicator = ref<HTMLDivElement>(null);
export const container = ref<HTMLDivElement>(null);
onMounted(() => {
  watchEffect(
    () => {
      const { width } = selectedItem.value.getBoundingClientRect();
      const { height } = selectedItem.value.getBoundingClientRect();
      const guluTabs: HTMLElement = indicator.value.parentNode.parentNode;
      const className: string = guluTabs.className
      if(className.indexOf('gulu-position-left') >= 0 ||
          className.indexOf('gulu-position-right') >= 0){
        indicator.value.style.height = height + "px";
        indicator.value.style.height = height + "px";
        const { bottom: bottom1 } = selectedItem.value.getBoundingClientRect();
        const { bottom: bottom2 } = container.value.getBoundingClientRect();
        const bottom = bottom2 - bottom1;
        indicator.value.style.bottom = bottom + "px";
        return;
      }
      indicator.value.style.width = width + "px";
      const { left: left1 } = selectedItem.value.getBoundingClientRect();
      const { left: left2 } = container.value.getBoundingClientRect();
      const left = left1 - left2;
      indicator.value.style.left = left + "px";
    },

    {
      flush: "post",
    }
  );
});
export const defaults = context.slots.default();
defaults.forEach((tag) => {
  if ((tag.type as Component).name !== Tab.name) {
    throw new Error("Tabs 子标签必须是 Tab");
  }
});
export const current = computed(() => {
  return defaults.find((tag) => tag.props.title === props.selected);
});
export const titles = defaults.map((tag) => {
  return tag.props.title;
});
export const select = (title: string) => {
  context.emit("update:selected", title);
};
</script>
<style lang="scss">
$blue: #40a9ff;
$color: #333;
$border-color: #d9d9d9;

.gulu-tabs {
  display: flex;
  flex-direction: column;

  &-nav {
    display: flex;
    color: $color;
    border-bottom: 1px solid $border-color;
    position: relative;
    &-indicator {
      position: absolute;
      height: 1.5px;
      background: $blue;
      width: 100px;
      transition: all 250ms;
      left: 0;
      bottom: -1px;
    }
    &-item {
      padding: 8px 0;
      margin: 0 16px;
      cursor: pointer;
      &:first-child {
        margin-left: 0;
      }
      &.selected {
        color: $blue;
      }
    }
  }
  &-content {
    padding: 8px 0;
  }
}

.gulu-position-bottom{
  flex-direction: column-reverse;
  .gulu-tabs-nav{
    border-top: 1px solid $border-color;
    border-bottom: none;
    &-indicator {
      top: 0;
    }
  }
}
.gulu-position-left{
  flex-direction: row;
  .gulu-tabs-nav{
    border-right: 1px solid $border-color;
    border-bottom: none;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    margin-right: 10px;
    &-item{
      margin: 0 10px;
    }
    &-indicator {
      width: 1.5px;
      left: 100% - 1;
    }
  }
  .gulu-tabs-content {
    flex-grow: 1;
  }
}
.gulu-position-right{
  flex-direction: row-reverse;
  .gulu-tabs-nav{
    border-left: 1px solid $border-color;
    border-bottom: none;
    flex-direction: column;
    margin-left: 10px;
    &-item{
      margin: 0 10px;
    }
    &-indicator {
      left: -0.5px;
      width: 1.5px;
    }
  }
  .gulu-tabs-content {
    text-align: left;
    flex-grow: 1;
  }
}
</style>
