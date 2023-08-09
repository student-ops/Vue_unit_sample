<script setup>
import { ref, watch,defineProps,defineEmits } from 'vue'
const props = defineProps({
  msg: String
})

const todoId = ref(1)
const todoData = ref(null)

async function fetchData() {
  todoData.value = null
  const res = await fetch(
    `https://jsonplaceholder.typicode.com/todos/${todoId.value}`
  )
  todoData.value = await res.json()
}
const emit = defineEmits(['response'])

emit('response', 'hello from child')

fetchData()

watch(todoId, fetchData)

</script>

<template>
  <h2>{{ props.msg || 'No props passed yet' }}</h2>
  <p>Todo id: {{ todoId }}</p>
  <button @click="todoId++">Fetch next todo</button>
  <p v-if="!todoData">Loading...</p>
  <pre v-else>{{ todoData }}</pre>
</template>