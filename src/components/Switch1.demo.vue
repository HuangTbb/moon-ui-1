<demo>
常规用法
</demo>
<template>
  <Switch v-model:value="switchState" />
</template>
<script lang="ts">
import { ref } from "vue";
import { Switch } from "../lib/index";
export default {
  components: { Switch },
  setup() {
    const switchState = ref(false);
    return { switchState };
  },
};
</script>
