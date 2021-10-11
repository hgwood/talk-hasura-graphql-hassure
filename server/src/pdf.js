

export function renderPdf(month, year) {
  return Buffer.from(Array(1024).fill(0).map(() => Math.floor(Math.random() * 255))).toString('base64');
}
