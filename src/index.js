import express from 'express';
import morgan from 'morgan';
import dotenv from "dotenv";

dotenv.config();

const PORT = process.env.PORT || 5000;

const app = express();
const router = express.Router();

router.get('/', (req, res) => {
  res.send('hello');
});

app.use(morgan('dev'));
app.use('/v1', router);

app.get('/', (req, res) => {
  res.send('YO');
});

app.listen(PORT, () => {
  console.log(`server running in ${PORT}`);
});
