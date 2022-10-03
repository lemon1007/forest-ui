<demo>
常规使用
</demo>
<template>
  <div>
    <Button @click="toggle">普通弹框</Button>
    <Dialog v-model:visible="visible" :closeOnClickOverlay="false" :ok="ok" :cancel="cancel">
      <template v-slot:content>
        <div>我敬佩简单的快乐，那是复杂的最后避难所。</div>
      </template>
      <template v-slot:title>
        <h3>标题</h3>
      </template>
    </Dialog>
  </div>
</template>

<script lang="ts">
import {Button, Dialog} from '../lib/index';
import {ref} from 'vue';

export default {
  components: {Dialog, Button},
  setup() {
    const visible = ref(false);
    const toggle = () => {
      visible.value = !visible.value;
    };
    const ok = () => {
      return true;
    };
    const cancel = () => {
      return true;
    };
    return {visible, toggle, ok, cancel};
  }
};
</script>
