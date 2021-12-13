# <font color=#e2e2e2>开始使用</font>
<font color=#e2e2e2>请先<mark>&nbsp;[安装](#/doc/install)&nbsp;</mark>本组件库。</font>

<font color=#e2e2e2>然后在你的代码中写入下面的代码</font>

```
import {Button, Tabs, Tab, Switch, Dialog, openDialog} from "moon-ui"
```

<font color=#e2e2e2>就可以使用我提供的组件了。</font>

## Vue <font color=#e2e2e2>单文件组件</font>

<font color=#e2e2e2>代码示例：</font>
```
<template>
  <div>
    <Button>按钮</Button>
  </div>
</template>
<script>
import {Button, Tabs, Tab, Switch, Dialog, openDialog} from "moon-ui"
export default {
  components: {Button}
}
</script>
```