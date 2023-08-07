<template>
    <div>
      <h1>Aページ</h1>
      <button @click="increment">クリック: {{ count }}</button>
      <input v-model="text" placeholder="Type here">
      <p>{{ text }}</p>
    </div>
  </template>
  
  <script>
  export default {
    name: "A_page",
    data() {
      return {
        count: 0,
        text: ''
      };
    },
    methods: {
      increment() {
        this.count++;
      }
    }
  };
  </script>