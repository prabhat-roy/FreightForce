import { defineConfig, devices } from '@playwright/test';

export default defineConfig({
  testDir: './tests',
  retries: 2,
  use: {
    baseURL: process.env.BASE_URL ?? 'https://staging.freightforce.com',
    trace: 'on-first-retry',
    screenshot: 'only-on-failure',
  },
  projects: [{ name: 'smoke', use: { ...devices['Desktop Chrome'] } }],
});
