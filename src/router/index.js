import { createRouter, createWebHistory } from 'vue-router'
import A_page from '@/views/APage.vue'
import B_page from '@/views/B.vue'
import TodoList from '@/views/TodoList.vue' // TodoList コンポーネントをインポート
import Wather from '@/views/WatcherSFC.vue'

const routes = [
    {
        path: '/a',
        component: A_page
    },
    {
        path: '/b',
        component: B_page
    },
    {
        path: '/todos', // TodoList コンポーネントへのルートを追加
        component: TodoList
    },
    {path: '/wather', component: Wather}
]

const router = createRouter({
    history: createWebHistory(),
    routes
})

export default router
