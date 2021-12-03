import { createApp } from 'vue'
import App from './App.vue'
import './index.css'
import {createWebHashHistory, createRouter} from 'vue-router'
import Starts from './components/Starts.vue'
import Starts2 from './components/Starts2.vue'

const history = createWebHashHistory()
const router = createRouter({
  history,
  routes: [
    {path: '/', component: Starts},
    {path: '/xxx', component: Starts2}
  ]
})
const app = createApp(App)
app.use(router)
app.mount('#app')
