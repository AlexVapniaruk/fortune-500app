const fs = require('fs');
const csv = require('csv-parser');
const { PrismaClient } = require('@prisma/client');

const prisma = new PrismaClient();

async function importCsv() {
    fs.createReadStream('./src/data/fortune1000_2024.csv')
      .pipe(csv())
      .on('data', async (row) => {
        // Extract data from the CSV
        const { CompanyType, Sector, Industry, ...companyData } = row;
  
        try {
          // Connect or create the CompanyType, Sector, and Industry
          const companyType = await prisma.companyType.upsert({
            where: { name: CompanyType },
            update: {},
            create: { name: CompanyType },
          });
  
          const sector = await prisma.sector.upsert({
            where: { name: Sector },
            update: {},
            create: { name: Sector },
          });
  
          // Handle Industry upsert
          const industry = await prisma.industry.upsert({
            where: { name: Industry },
            update: {},
            create: { name: Industry },
          });
  
          // Insert the company data
          await prisma.company.create({
            data: {
              ticker: row.Ticker,
              rank: parseInt(row.Rank, 10),
              name: row.Company,
              sector: {
                connect: { id: sector.id }, // Connect to the existing or created sector
              },
              industry: {
                connect: { id: industry.id }, // Connect to the existing or created industry
              },
              companyType: {
                connect: { id: companyType.id }, // Connect to the existing or created companyType
              },
              profitable: row.Profitable.toLowerCase() === 'yes', // Convert to boolean
              founderIsCeo: row.Founder_is_CEO.toLowerCase() === 'yes', // Convert to boolean
              femaleCeo: row.FemaleCEO.toLowerCase() === 'yes', // Convert to boolean
              growthInJobs: row.Growth_in_Jobs.toLowerCase() === 'yes', // Convert to boolean
              changeInRank: parseFloat(row.Change_in_Rank),
              gainedInRank: row.Gained_in_Rank.toLowerCase() === 'yes', // Convert to boolean
              droppedInRank: row.Dropped_in_Rank.toLowerCase() === 'yes', // Convert to boolean
              newcomerToTheFortune500: row.Newcomer_to_the_Fortune500.toLowerCase() === 'yes', // Convert to boolean
              global500: row.Global500.toLowerCase() === 'yes', // Convert to boolean
              worldsMostAdmiredCompanies: row.Worlds_Most_Admired_Companies.toLowerCase() === 'yes', // Convert to boolean
              bestCompaniesToWorkFor: row.Best_Companies_to_Work_For.toLowerCase() === 'yes', // Convert to boolean
              numberOfEmployees: parseInt(row.Number_of_employees, 10),
              marketCapMarch28M: parseFloat(row.MarketCap_March28_M),
              revenuesM: parseFloat(row.Revenues_M),
              revenuePercentChange: !isNaN(parseFloat(row.RevenuePercentChange)) ? parseFloat(row.RevenuePercentChange) : null, // Ensure this field is populated, use null if not a number
              profitsM: parseFloat(row.Profits_M), // Ensure this field is populated
              profitsPercentChange: !isNaN(parseFloat(row.ProfitsPercentChange)) ? parseFloat(row.ProfitsPercentChange) : null, // Ensure this field is populated, use null if not a number
              assetsM: parseFloat(row.Assets_M),
              ceo: row.CEO,
              country: row.Country,
              headquartersCity: row.HeadquartersCity,
              headquartersState: row.HeadquartersState,
              website: row.Website,
              footnote: row.Footnote,
              marketCapUpdatedM: parseFloat(row.MarketCap_Updated_M),
              updated: new Date(row.Updated),
            },
          });
        } catch (error) {
          console.error('Error inserting company:', error);
        }
      })
      .on('end', () => {
        console.log('CSV file successfully processed');
      });
}
  
importCsv()
  .catch(e => console.error(e))
  .finally(async () => {
    await prisma.$disconnect();
  });
