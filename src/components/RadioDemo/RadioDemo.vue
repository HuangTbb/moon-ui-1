<template>
  <div>
    <h2>Radio 组件</h2>
    <Demo :component="Radio1Demo"/>
    <Demo :component="Radio2Demo"/>
    <Demo :component="Radio3Demo"/>
    <Demo :component="Radio4Demo"/>

  </div>
</template>
<script>
import Demo from '../Demo.vue'
import Radio1Demo from "./Radio1.demo.vue"
import Radio2Demo from "./Radio2.demo.vue"
import Radio3Demo from "./Radio3.demo.vue"
import Radio4Demo from "./Radio4.demo.vue"

export default {
  components: {Demo},
  setup(){
    return {Radio1Demo, Radio2Demo, Radio3Demo,Radio4Demo}
  }
}
</script>