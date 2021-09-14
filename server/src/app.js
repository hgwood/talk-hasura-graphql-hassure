import Koa from 'koa'
import KoaRouter from '@koa/router'
import readline from './readline.js'
import { v4 as uuid } from 'uuid'
import { renderPdf } from './pdf.js'

export const app = new Koa()
export const router = new KoaRouter()

router.post('/render-pdf', async ctx => {
  await readline('Press enter to send action result')

  const { input: { month, year } } = ctx.request.body

  try {
    ctx.body = {
      id: uuid(),
      filename: `cra-${month}-${year}.pdf`,
      content: await renderPdf(month),
    }
  } catch(err) {
    ctx.throw(400, `Cannot render PDF: ${err.message}`)
  }
})

app.use(async (ctx, next) => {
  try {
    await next()
  } catch(err) {
    console.error(err)
    ctx.status = err.status || 500
    ctx.body = { message: err.message, code: `${err.code || err.status}` }
  }
})
