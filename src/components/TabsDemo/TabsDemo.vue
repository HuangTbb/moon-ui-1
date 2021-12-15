<template>
  <div>
    <h2>Tabs 示例</h2>
    <Demo :component="Tabs1Demo" />
    <Demo :component="Tabs2Demo" />
  </div>
</template>
<script lang="ts">
import Demo from "../Demo.vue";
import Tabs1Demo from "./Tabs1.demo.vue";
import Tabs2Demo from "./Tabs2.demo.vue";

export default {
  components: { Demo },
  setup() {
    return { Tabs1Demo, Tabs2Demo };
  },
};
</script>
