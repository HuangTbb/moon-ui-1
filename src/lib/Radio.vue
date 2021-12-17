<template>
  <div class="gulu-radio-wrapper"
       :class="{ 'disabled': disabled}"
       :transverse="transverse"
       :style="transverse?  'display: inline-block; margin-right: 10px;': ''">
    <div class="gulu-radio">
      <div :disabled="disabled">
        <input type="radio" @click="selectedRadio" class="gulu-radio-input" :name="inputGroup"/>
      </div>
      <span>{{ radioName }}</span>
    </div>
  </div>
</template>
<script lang="ts">
export default {
  props: {
    radioName: String,
    disabled: Boolean,
    inputGroup: String,
    transverse: Boolean
  },
  setup(){
    const selectedRadio= (e)=>{
      const radioInputs = document.querySelectorAll('.gulu-radio-input');
      const selectedName = e.path[0].name
      const group = []
      radioInputs.forEach((item: HTMLInputElement) =>{
        if(item.name){
          group.push(item)
        }else{
          e.path[1].className = 'gulu-selected'
        }
      })
      group.forEach((item: HTMLInputElement) => {
        if(item.name ===  selectedName){
          (item.parentNode as HTMLDivElement).className = ''
          e.path[1].className = 'gulu-selected'
        }
      })
    }
    return { selectedRadio }
  }
};
</script>
<style lang="scss" scoped>
.gulu-radio-wrapper{
  &.disabled{
    color: #c4c4c4;
    cursor: not-allowed;
    > .gulu-radio{
      > div {
        border: 1px solid #c4c4c4;
        pointer-events: none;
        background: #f5f5f5;

        &.gulu-selected{
          border: 1px solid #c4c4c4;
          box-shadow: none;
          &:before{
            background: #c4c4c4;
          }
        }
      }
    }
  }
  > .gulu-radio{
    display: flex;
    align-items: center;
    > div{
      width: 16px;
      height: 16px;
      border: 1px solid #1d2c40;
      border-radius: 8px;
      background: #fff;
      transition: all 250ms;
      position: relative;
      display: inline-block;
      > .gulu-radio-input {
        position: absolute;
        top: 0;
        right: 0;
        bottom: 0;
        left: 0;
        z-index: 1;
        cursor: pointer;
        opacity: 0;
      }
      &:hover{
        border: 1px solid #1890ff;
      }
      &.gulu-selected{
        border: 1px solid #1890ff;
        position: relative;
        box-shadow: 0 0 2px #1890ff;
        animation: radio 250ms ease-in-out;
        @keyframes radio {
          0%{
            box-shadow: 0 0 4px #1890ff;
          }
          100%{
            box-shadow: 0 0 2px #1890ff;
          }
        }
        &:before {
          content: "";
          position: absolute;
          top: 2.5px;
          left: 2.5px;
          width: 9px;
          height: 9px;
          border-radius: 4.5px;
          background: #1890ff;
          animation: radioBefore 200ms ease-in-out;
          @keyframes radioBefore {
            0%{
              width: 6px;
              height: 6px;
              top: 4px;
              left: 4px;
              border-radius: 3px;
            }
            100%{
              top: 2.5px;
              left: 2.5px;
              width: 9px;
              height: 9px;
              border-radius: 4.5px;
            }
          }
        }
      }
    }
    > span{
      padding: 0 8px;
      text-align: center;
    }
  }

}
</style>