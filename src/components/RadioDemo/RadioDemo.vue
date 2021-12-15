<template>
  <div>
    <h2>Radio 组件</h2>
    <Demo :component="Radio1Demo"/>
  </div>
</template>
<script>
import Demo from '../Demo.vue'
import Radio1Demo from "./Radio1.demo.vue"
export default {
  components: {Demo},
  setup(){
    return {Radio1Demo}
  }
}
</script>