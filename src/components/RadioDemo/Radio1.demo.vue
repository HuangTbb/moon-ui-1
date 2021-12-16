<demo>
常规用法
</demo>
<template>
  <Radio v-model:value="radioState" radioName="Radio"/>
</template>

<script lang="ts">
import { ref } from "vue";
import Radio from '../../lib/Radio.vue';
export default {
  components: { Radio },
  setup() {
    const radioState = ref(false);
    return { radioState };
  },
};
</script>
