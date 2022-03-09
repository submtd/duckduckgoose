import { createRouter, createWebHistory } from "vue-router";
import About from "../views/About.vue";
import GetMatic from "../views/GetMatic.vue";
import Home from "../views/Home.vue";
import NotFound from "../views/NotFound.vue";
import Team from "../views/Team.vue";

const routes = [
    {
        path: "/",
        name: "Home",
        component: Home,
    },
    {
        path: "/about",
        name: "About",
        component: About,
    },
    {
        path: "/team",
        name: "Team",
        component: Team,
    },
    {
        path: "/get-matic",
        name: "GetMatic",
        component: GetMatic,
    },
    {
        path: "/:catchAll(.*)",
        component: NotFound,
    }
];

const router = createRouter({
    history: createWebHistory(),
    routes,
});

export default router;
