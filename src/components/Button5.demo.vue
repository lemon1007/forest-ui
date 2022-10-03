<demo>
支持显示 Loading
</demo>
<template>
  <div>
    <Button loading>加载中</Button>
    <Button>加载完成</Button>
  </div>
</template>

<script lang="ts">
import {Button} from '../lib/index';

export default {
  components: {Button}
};
</script>
