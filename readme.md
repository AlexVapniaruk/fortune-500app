requirements: node.js v18<br>
Backend start: <br>
cd backend<br>
npm install<br>
rename `.env-example` and add your db config (create db if needed)<br>
run migration `npx prisma migrate dev --name init`<br>
node importCsv.js<br>
run server npx `ts-node src/server.ts`<br>
<br>
Frontend start:<br>
cd frontend<br>
npm install<br>
rename `.env-example` and add your server url (e.g. http://localhost:3000)<br>

