<template>
  <div>
    <h1>Aページ</h1>
    <button @click="increment">クリック: {{ count }}</button>
    <input v-model="text" placeholder="Type here">
    <p>{{ text }}</p>
    <AwesomeState />
    <p>wather</p>
    <Watcher :msg = "'hello from parent'" @response="(msg) => childMsg = msg" />
    <p>{{ childMsg }}</p>
  </div>
</template>

<script setup>
import { ref } from 'vue';
import AwesomeState from './AwesomeState.vue';
import Watcher from '@/views/WatcherSFC.vue';

const childMsg = ref('No child msg yet')
const count = ref(0);
const text = ref('');

const increment = () => {
  count.value++;
};
</script>
