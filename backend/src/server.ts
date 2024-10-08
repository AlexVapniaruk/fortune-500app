// backend/src/server.ts
import express, { Request, Response } from 'express';
import cors from 'cors';
import { getCompanyListBySearch, getCompanyById } from './modules/companies';

const app = express();
app.use(cors());
app.use(express.json());

app.get('/api/ping', (req, res) => {
  res.json({ message: 'pong' });
});


app.get('/api/search', async (req: Request, res: Response) => {
  const query = req.query.query as string;
  
  try {
    const results = await getCompanyListBySearch(query);
    res.json(results);
  } catch (error) {
    console.error(error);
    res.status(500).json({ error: 'Something went wrong' });
  }
});

app.get('/api/companies/:id', async (req: Request, res: Response) => {
  const id = Number(req.params.id as string);
  
  try {
    const results = await getCompanyById(id);
    res.json(results);
  } catch (error) {
    console.error(error);
    res.status(500).json({ error: 'Something went wrong' });
  }
});


const port = process.env.PORT || 3000;
app.listen(port, () => {
  console.log(`Server is running on port ${port}`);
});
