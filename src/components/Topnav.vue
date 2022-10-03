<template>
  <div class="topnav">
    <router-link to="/" class="logo">
      <svg class="icon">
        <use xlink:href="#icon-tree"></use>
      </svg>
    </router-link>
    <ul class="menu">
      <li>
        <router-link to="/doc">
          <svg class="icon">
            <use xlink:href="#icon-doc"></use>
          </svg>
        </router-link>
      </li>
      <li>
        <a href="https://github.com/lemon19961007/forest-ui">
          <svg class="icon">
            <use xlink:href="#icon-github"></use>
          </svg>
        </a>
      </li>
    </ul>
    <svg v-if="toggleMenuButtonVisible" class="toggleAside" @click="toggleMenu">
      <use xlink:href="#icon-more"></use>
    </svg>
  </div>
</template>

<script lang="ts">
import {
  inject,
  Ref
} from 'vue';

export default {
  props: {
    toggleMenuButtonVisible: {
      type: Boolean,
      default: false
    }
  },
  setup() {
    const menuVisible = inject<Ref<boolean>>('menuVisible'); // get
    const toggleMenu = () => {
      menuVisible.value = !menuVisible.value;
    };
    return {
      toggleMenu
    };
  },
};
</script>

<style lang="scss" scoped>
$color: #007974;

.topnav {
  color: $color;
  display: flex;
  padding: 16px;
  position: fixed;
  top: 0;
  left: 0;
  width: 100%;
  z-index: 16;
  justify-content: center;
  align-items: center;
  background: #42b983;

  > .logo {
    max-width: 6em;
    margin-right: auto;

    > svg {
      width: 32px;
      height: 32px;
    }
  }

  > .menu {
    display: flex;
    white-space: nowrap;
    flex-wrap: nowrap;
    margin-right: 16px;

    > li {
      margin: 0 0.5em;

      > a {
        > .icon {
          width: 27px;
          height: 27px;
          color: white;
        }
      }
    }
  }

  > .toggleAside {
    width: 32px;
    height: 32px;
    position: absolute;
    left: 16px;
    top: 50%;
    transform: translateY(-50%);
    display: none;
    fill: white;
  }

  @media (max-width: 500px) {
    > .menu {
      display: none;
    }

    > .logo {
      margin: 0 auto;
    }

    > .toggleAside {
      display: inline-block;
    }
  }
}
</style>
