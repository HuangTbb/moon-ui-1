<template>
  <div>Tabs 示例</div>
  <h1>示例1</h1>
  <Tabs v-model:selected="title">
    <Tab title="导航1">内容1</Tab>
    <Tab title="导航2">内容2</Tab>
    <Tab title="导航3">内容3</Tab>
  </Tabs>
</template>
<script>
import Tab from "../lib/Tab.vue";
import Tabs from "../lib/Tabs.vue";
import { ref } from "vue";
export default {
  components: { Tab, Tabs },
  setup() {
    const title = ref("导航1");
    return { title };
  },
};
</script>
