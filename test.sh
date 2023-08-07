#!/bin/bash

# ディレクトリの作成
mkdir -p src/views src/router

# App.vue ファイルの作成
cat <<EOL > src/App.vue
<template>
  <div>
    <router-view></router-view>
  </div>
</template>

<script>
export default {
  name: "App"
};
</script>
EOL

# MyPage.vue ファイルの作成
cat <<EOL > src/views/MyPage.vue
<template>
  <div>
    <h1>My Page</h1>
  </div>
</template>

<script>
export default {
  name: "MyPage"
};
</script>
EOL

# ルーティング設定ファイルの作成
cat <<EOL > src/router/index.js
import { createRouter, createWebHistory } from 'vue-router';
import MyPage from '@/views/MyPage.vue';

const routes = [
  {
    path: '/mypage',
    component: MyPage
  }
];

const router = createRouter({
  history: createWebHistory(),
  routes
});

export default router;
EOL

# main.js ファイルの作成
cat <<EOL > src/main.js
import { createApp } from 'vue';
import App from './App.vue';
import router from './router';

createApp(App).use(router).mount('#app');
EOL

echo "ファイルの作成が完了しました。"
