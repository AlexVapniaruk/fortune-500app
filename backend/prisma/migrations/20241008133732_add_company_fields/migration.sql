/*
  Warnings:

  - Added the required column `Assets_M` to the `Company` table without a default value. This is not possible if the table is not empty.
  - Added the required column `Best_Companies_to_Work_For` to the `Company` table without a default value. This is not possible if the table is not empty.
  - Added the required column `Change_in_Rank` to the `Company` table without a default value. This is not possible if the table is not empty.
  - Added the required column `Dropped_in_Rank` to the `Company` table without a default value. This is not possible if the table is not empty.
  - Added the required column `FemaleCEO` to the `Company` table without a default value. This is not possible if the table is not empty.
  - Added the required column `Founder_is_CEO` to the `Company` table without a default value. This is not possible if the table is not empty.
  - Added the required column `Gained_in_Rank` to the `Company` table without a default value. This is not possible if the table is not empty.
  - Added the required column `Global500` to the `Company` table without a default value. This is not possible if the table is not empty.
  - Added the required column `Growth_in_Jobs` to the `Company` table without a default value. This is not possible if the table is not empty.
  - Added the required column `HeadquartersCity` to the `Company` table without a default value. This is not possible if the table is not empty.
  - Added the required column `HeadquartersState` to the `Company` table without a default value. This is not possible if the table is not empty.
  - Added the required column `MarketCap_March28_M` to the `Company` table without a default value. This is not possible if the table is not empty.
  - Added the required column `MarketCap_Updated_M` to the `Company` table without a default value. This is not possible if the table is not empty.
  - Added the required column `Newcomer_to_the_Fortune500` to the `Company` table without a default value. This is not possible if the table is not empty.
  - Added the required column `Number_of_employees` to the `Company` table without a default value. This is not possible if the table is not empty.
  - Added the required column `ProfitsPercentChange` to the `Company` table without a default value. This is not possible if the table is not empty.
  - Added the required column `Profits_M` to the `Company` table without a default value. This is not possible if the table is not empty.
  - Added the required column `RevenuePercentChange` to the `Company` table without a default value. This is not possible if the table is not empty.
  - Added the required column `Revenues_M` to the `Company` table without a default value. This is not possible if the table is not empty.
  - Added the required column `Updated` to the `Company` table without a default value. This is not possible if the table is not empty.
  - Added the required column `Worlds_Most_Admired_Companies` to the `Company` table without a default value. This is not possible if the table is not empty.
  - Added the required column `ceo` to the `Company` table without a default value. This is not possible if the table is not empty.
  - Added the required column `country` to the `Company` table without a default value. This is not possible if the table is not empty.
  - Added the required column `footnote` to the `Company` table without a default value. This is not possible if the table is not empty.
  - Added the required column `name` to the `Company` table without a default value. This is not possible if the table is not empty.
  - Added the required column `profitable` to the `Company` table without a default value. This is not possible if the table is not empty.
  - Added the required column `rank` to the `Company` table without a default value. This is not possible if the table is not empty.
  - Added the required column `website` to the `Company` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `Company` ADD COLUMN `Assets_M` DOUBLE NOT NULL,
    ADD COLUMN `Best_Companies_to_Work_For` VARCHAR(191) NOT NULL,
    ADD COLUMN `Change_in_Rank` DOUBLE NOT NULL,
    ADD COLUMN `Dropped_in_Rank` VARCHAR(191) NOT NULL,
    ADD COLUMN `FemaleCEO` VARCHAR(191) NOT NULL,
    ADD COLUMN `Founder_is_CEO` VARCHAR(191) NOT NULL,
    ADD COLUMN `Gained_in_Rank` VARCHAR(191) NOT NULL,
    ADD COLUMN `Global500` VARCHAR(191) NOT NULL,
    ADD COLUMN `Growth_in_Jobs` VARCHAR(191) NOT NULL,
    ADD COLUMN `HeadquartersCity` VARCHAR(191) NOT NULL,
    ADD COLUMN `HeadquartersState` VARCHAR(191) NOT NULL,
    ADD COLUMN `MarketCap_March28_M` DOUBLE NOT NULL,
    ADD COLUMN `MarketCap_Updated_M` DOUBLE NOT NULL,
    ADD COLUMN `Newcomer_to_the_Fortune500` VARCHAR(191) NOT NULL,
    ADD COLUMN `Number_of_employees` INTEGER NOT NULL,
    ADD COLUMN `ProfitsPercentChange` DOUBLE NOT NULL,
    ADD COLUMN `Profits_M` DOUBLE NOT NULL,
    ADD COLUMN `RevenuePercentChange` DOUBLE NOT NULL,
    ADD COLUMN `Revenues_M` DOUBLE NOT NULL,
    ADD COLUMN `Updated` DATETIME(3) NOT NULL,
    ADD COLUMN `Worlds_Most_Admired_Companies` VARCHAR(191) NOT NULL,
    ADD COLUMN `ceo` VARCHAR(191) NOT NULL,
    ADD COLUMN `country` VARCHAR(191) NOT NULL,
    ADD COLUMN `footnote` VARCHAR(191) NOT NULL,
    ADD COLUMN `name` VARCHAR(191) NOT NULL,
    ADD COLUMN `profitable` VARCHAR(191) NOT NULL,
    ADD COLUMN `rank` INTEGER NOT NULL,
    ADD COLUMN `website` VARCHAR(191) NOT NULL;
