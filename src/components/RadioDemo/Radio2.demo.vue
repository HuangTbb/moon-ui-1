<demo>
支持 disabled
</demo>
<template>
 <Radio v-model:value="radioState" radio-name="Radio" :disabled="disabled"/>
  <Button @click="disabled = !disabled">切换 disabled</Button>
</template>

<script lang="ts">
import { ref } from "vue";
import Radio from '../../lib/Radio.vue';
import Button from '../../lib/Button.vue';
export default {
  components: {Button, Radio },
  setup() {
    const radioState = ref(false);
    const disabled = ref(true);
    return { radioState, disabled };
  },
};
</script>
