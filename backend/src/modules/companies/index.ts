import { PrismaClient } from '@prisma/client';

export const getCompanyListBySearch = async (query:string) => {
  const prisma = new PrismaClient();

  try {
    const results = await prisma.company.findMany({
      where: {
        OR: [
          {
            name: {
              contains: query,
            },
          },
          {
            ticker: {
              contains: query,
            },
          },
        ],
      },
      orderBy: {
        name: 'asc',
      },
    });
    return results;
  } catch (error) {
    console.error("Database query failed:", error);
    throw new Error("Could not fetch data from the database.");
  } finally {
    await prisma.$disconnect();
  }
}

export const getCompanyById = async (id: number) => {
    const prisma = new PrismaClient();
  
    try {
      const company = await prisma.company.findUnique({
        where: {
          id: id,
        },
      });
  
      if (!company) {
        throw new Error(`Company with ID ${id} not found.`);
      }
  
      return company;
    } catch (error) {
      console.error("Database query failed:", error);
      throw new Error("Could not fetch data from the database.");
    } finally {
      await prisma.$disconnect();
    }
  };  