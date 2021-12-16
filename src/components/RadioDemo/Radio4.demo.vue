<demo>
横向排列
</demo>
<template>
  <p>爱好：</p>
  <Radio radio-name="阅读" input-group="hobby" transverse/>
  <Radio radio-name="唱歌" input-group="hobby" transverse/>
  <Radio radio-name="书法" input-group="hobby" transverse/>
  <Radio radio-name="跳舞" input-group="hobby" transverse/>
  <Radio radio-name="旅游" input-group="hobby" transverse/>
</template>

<script lang="ts">
import Radio from '../../lib/Radio.vue';
export default {
  components: { Radio }
};
</script>