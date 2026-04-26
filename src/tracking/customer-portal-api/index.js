import Fastify from 'fastify';

const port = parseInt(process.env.PORT || '50203', 10);
const app = Fastify({ logger: { level: process.env.LOG_LEVEL || 'info' } });

app.get('/healthz', async () => ({
  status: 'ok',
  service: 'customer-portal-api',
  checked_at: new Date().toISOString(),
}));

app
  .listen({ host: '0.0.0.0', port })
  .then(() => app.log.info({ port }, 'customer-portal-api ready'))
  .catch(err => {
    app.log.error(err);
    process.exit(1);
  });
