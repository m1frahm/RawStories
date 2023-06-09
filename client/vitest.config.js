/// <reference types="vitest" />
import { defineConfig } from 'vite'
import path from 'path'
import react from '@vitejs/plugin-react'

// https://vitejs.dev/config/
export default defineConfig({
    plugins: [react()],
    test: {
        framework: 'vitest',
        globals: true, //this allows you to use things like it or expect or test
        environment: 'jsdom',
    }
})