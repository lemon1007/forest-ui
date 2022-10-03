<demo>
支持 Size
</demo>
<template>
  <div>
    <div>
      <Button size="big">大号按钮</Button>
      <Button>普通按钮</Button>
      <Button size="small">迷你按钮</Button>
    </div>
    <div>
      <Button theme="link" size="big">大号链接</Button>
      <Button theme="link">普通链接</Button>
      <Button size="small" theme="link">迷你链接</Button>
    </div>
    <div>
      <Button size="big" theme="text">大号文本</Button>
      <Button theme="text">普通文本</Button>
      <Button size="small" theme="text">迷你文本</Button>
    </div>
  </div>
</template>

<script lang="ts">
import {Button} from '../lib/index';

export default {
  components: {Button}
};
</script>
