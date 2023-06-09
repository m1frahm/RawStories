/// <reference types="vitest" />
/// <reference types="vite/client" />
//Getting proxy to work again

import { defineConfig } from "vite";
import react from "@vitejs/plugin-react";
import path from "path";

// https://vitejs.dev/config/
export default defineConfig({
  plugins: [react()],
  server: {
    proxy: {
      "/api": {
        target: "http://localhost:8090",
        changeOrigin: true,
        secure: false,
      },
    },
  },
  test: {
    framework: "vitest",
    globals: true,
    environment: "jsdom",
  },
});
