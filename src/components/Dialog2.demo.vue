<demo>
快捷使用
</demo>
<template>
<div>
  <Button @click="showDialog">便捷弹框</Button>
</div>
</template>

<script lang="ts">
import {Button, openDialog} from '../lib';
import {h} from 'vue'
export default {
  components: {Button},
  setup() {
    const showDialog = () => {
      openDialog({
        title: h('h3', {}, '标题'),
        content: '任何地方，只要你爱它，它就是你的世界。',
        ok() {return true},
        cancel() { return true}
      })
    }
    return {
      showDialog
    }
  }
}
</script>
