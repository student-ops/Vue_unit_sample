<script setup>
import { ref, defineExpose } from 'vue'

const awesome = ref(true)

function toggle() {
  awesome.value = !awesome.value
}

defineExpose({ awesome, toggle })
</script>

<template>
  <p>-awesome component-</p>
  <button @click="toggle">toggle</button>
  <h1 v-if="awesome">Vue is awesome!</h1>
  <h1 v-else>Oh no 😢</h1>
</template>
