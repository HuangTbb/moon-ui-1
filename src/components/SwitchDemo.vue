<template>
  <div>
    <Switch v-model:value="switchState" />
  </div>
</template>
<script lang="ts">
import { ref } from "vue";
import Switch from "../lib/Switch.vue";
export default {
  components: { Switch },
  setup() {
    const switchState = ref(false);
    return { switchState };
  },
};
</script>
