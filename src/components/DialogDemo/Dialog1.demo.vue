<demo>
常规使用
</demo>
<template>
  <div>
    <Button @click="toggle">打开对话框</Button>
    <Dialog
      v-model:visible="x"
      :closeOnClickOverlay="false"
      :ok="ok"
      :cancel="cancel"
    >
      <template v-slot:content>
        <strong>hi</strong>
        <div>你好</div>
      </template>
      <template v-slot:title>
        <strong>加粗的标题</strong>
      </template>
    </Dialog>
  </div>
</template>
<script lang="ts">
import { Button, Dialog } from "../../lib";
import { ref } from "vue";
export default {
  components: { Button, Dialog },
  setup() {
    const x = ref(false);
    const toggle = () => {
      x.value = !x.value;
    };
    const ok = () => {
      console.log("ok");
    };
    const cancel = () => {
      console.log("cancel");
    };
    return { x, toggle, ok, cancel };
  },
};
</script>
