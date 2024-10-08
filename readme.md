requirements: node.js v18
Backend start: 
cd backend
npm install
rename `.env-example` and add your db config (create db if needed)
run migration `npx prisma migrate dev --name init`
node importCsv.js
run server npx `ts-node src/server.ts`

Frontend start:
cd frontend
npm install
rename `.env-example` and add your server url (e.g. http://localhost:3000)

