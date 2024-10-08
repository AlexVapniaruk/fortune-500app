/*
  Warnings:

  - You are about to drop the column `femaleCEO` on the `Company` table. All the data in the column will be lost.
  - You are about to drop the column `founder_is_CEO` on the `Company` table. All the data in the column will be lost.
  - You are about to drop the column `growth_in_jobs` on the `Company` table. All the data in the column will be lost.
  - You are about to drop the column `name` on the `Company` table. All the data in the column will be lost.
  - You are about to drop the column `profitable` on the `Company` table. All the data in the column will be lost.
  - You are about to drop the column `rank` on the `Company` table. All the data in the column will be lost.
  - You are about to drop the column `type` on the `CompanyType` table. All the data in the column will be lost.
  - A unique constraint covering the columns `[name]` on the table `CompanyType` will be added. If there are existing duplicate values, this will fail.
  - Added the required column `name` to the `CompanyType` table without a default value. This is not possible if the table is not empty.

*/
-- DropIndex
DROP INDEX `CompanyType_type_key` ON `CompanyType`;

-- AlterTable
ALTER TABLE `Company` DROP COLUMN `femaleCEO`,
    DROP COLUMN `founder_is_CEO`,
    DROP COLUMN `growth_in_jobs`,
    DROP COLUMN `name`,
    DROP COLUMN `profitable`,
    DROP COLUMN `rank`;

-- AlterTable
ALTER TABLE `CompanyType` DROP COLUMN `type`,
    ADD COLUMN `name` VARCHAR(191) NOT NULL;

-- CreateIndex
CREATE UNIQUE INDEX `CompanyType_name_key` ON `CompanyType`(`name`);
