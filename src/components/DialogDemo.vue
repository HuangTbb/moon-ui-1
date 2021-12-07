<template>
  <div>
    <Button @click="toggle">toggle</Button>
    <Dialog
      v-model:visible="x"
      :closeOnClickOverlay="false"
      :ok="f1"
      :cancel="f2"
    ></Dialog>
  </div>
</template>
<script lang="ts">
import Dialog from "../lib/Dialog.vue";
import Button from "../lib/Button.vue";
import { ref } from "vue";

export default {
  components: { Dialog, Button },
  setup() {
    const x = ref(false);
    const toggle = () => {
      x.value = !x.value;
      console.log(x.value);
    };
    const f1 = () => {
      console.log("f1");
    };
    const f2 = () => {
      console.log("f2");
    };
    return { x, toggle, f1, f2 };
  },
};
</script>
