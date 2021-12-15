<demo>
支持 disabled
</demo>
<template>
  <Switch v-model:value="switchState" disabled />
</template>
<script lang="ts">
import { ref } from "vue";
import { Switch } from "../../lib";
export default {
  components: { Switch },
  setup() {
    const switchState = ref(false);
    return { switchState };
  },
};
</script>
