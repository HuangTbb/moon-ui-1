<demo>
自定义宽高
</demo>
<template>
  <Select
      v-model:initial="defaultValue"
      :values="['Jack', 'Lucy', 'Jam']"
      width="180"
      height="50"/>
</template>
<script lang="ts">
import Select from '../../lib/Select.vue'
import {ref} from 'vue';
export default {
  components: {Select},
  setup(){
    const defaultValue = ref('Jack')
    return {defaultValue}
  }
}
</script>