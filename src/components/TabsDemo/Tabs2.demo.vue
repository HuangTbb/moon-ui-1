<demo>
位置
</demo>
<template>
  <div>
    <Button>top</Button>
    <Tabs v-model:selected="tabTitle" position="top">
      <Tab title="导航1">内容1</Tab>
      <Tab title="导航2">内容2</Tab>
      <Tab title="导航3">内容3</Tab>
    </Tabs>
    <Button>bottom</Button>
    <Tabs v-model:selected="tabTitle" position="bottom">
      <Tab title="导航1">内容1</Tab>
      <Tab title="导航2">内容2</Tab>
      <Tab title="导航3">内容3</Tab>
    </Tabs>
    <Button>left</Button>
    <Tabs v-model:selected="tabTitle" position="left">
      <Tab title="导航1">内容1</Tab>
      <Tab title="导航2">内容2</Tab>
      <Tab title="导航3">内容3</Tab>
    </Tabs>
    <Button>right</Button>
    <Tabs v-model:selected="tabTitle" position="right">
      <Tab title="导航1">内容1</Tab>
      <Tab title="导航2">内容2</Tab>
      <Tab title="导航3">内容3</Tab>
    </Tabs>
  </div>
</template>
<script lang="ts">
import { Tab, Tabs } from "../../lib";
import { ref } from "vue";
import Button from '../../lib/Button.vue';
export default {
  components: {Button, Tab, Tabs },
  setup() {
    const tabTitle = ref("导航1");
    return { tabTitle };
  },
};
</script>
<style lang="scss" scoped>
.gulu-tabs{
  margin-bottom: 40px;
}
</style>
