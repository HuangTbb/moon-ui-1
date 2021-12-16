<demo>
单选组合
</demo>
<template>
  <p>性别：</p>
  <Radio radio-name="男" input-group="gender"/>
  <Radio radio-name="女" input-group="gender"/>
  <p>职业：</p>
  <Radio radio-name="医生" input-group="occupation"/>
  <Radio radio-name="教师" input-group="occupation"/>
  <Radio radio-name="程序员" input-group="occupation"/>

</template>

<script lang="ts">
import Radio from '../../lib/Radio.vue';
export default {
  components: { Radio }
};
</script>