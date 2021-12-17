<template>
  <div>
    <h2>Select 组件</h2>
    <Demo :component="Select1Demo"/>
    <Demo :component="Select2Demo"/>

  </div>
</template>
<script>
import Demo from '../Demo.vue'
import Select1Demo from "./Select1.demo.vue"
import Select2Demo from "./Select2.demo.vue"

export default {
  components: {Demo},
  setup(){
    return {Select1Demo, Select2Demo}
  }
}
</script>