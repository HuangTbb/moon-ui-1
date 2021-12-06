<template>
  <div>
    <Switch :value="switchState" @input="switchState = $event" />
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
b
