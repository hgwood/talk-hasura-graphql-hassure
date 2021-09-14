import koaBodyParser from 'koa-bodyparser'
import { app, router } from './app.js'

app
  .use(router.allowedMethods())
  .use(koaBodyParser())
  .use(router.routes())

const port = process.env.PORT || 4000
app.listen(port, () => console.log(`listening on http://localhost:${port}`))

const signals = ['SIGINT', 'SIGTERM', 'SIGUSR1', 'SIGUSR2', 'SIGHUP', 'SIGBREAK']
signals.forEach(signal => process.on(signal, () => {
  process.exit(0)
}))