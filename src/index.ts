import express from 'express'

const app = express()
const route = express.Router()

app.use(express.json())
app.use(route)

route.get('/', (req, res) => {
   res.json({ message: 'hello world!' })
})


app.listen(3000, () => 'server runing on port 3000')