<template>
  <div>
    Tabs
    <component :is="defaults[0]" />
    <component :is="defaults[1]" />
    <component :is="defaults[2]" />
  </div>
</template>
<script>
import Tab from "./Tab.vue";
export default {
  setup(props, context) {
    const defaults = context.slots.default();
    defaults.forEach((tab) => {
      if (tab.type !== Tab) {
        throw new Error("Tabs 子标签必须是 Tab");
      }
    });
    return { defaults };
  },
};
</script>
