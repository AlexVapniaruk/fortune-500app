/*
  Warnings:

  - You are about to alter the column `Best_Companies_to_Work_For` on the `Company` table. The data in that column could be lost. The data in that column will be cast from `VarChar(191)` to `TinyInt`.
  - You are about to alter the column `Dropped_in_Rank` on the `Company` table. The data in that column could be lost. The data in that column will be cast from `VarChar(191)` to `TinyInt`.
  - You are about to alter the column `FemaleCEO` on the `Company` table. The data in that column could be lost. The data in that column will be cast from `VarChar(191)` to `TinyInt`.
  - You are about to alter the column `Founder_is_CEO` on the `Company` table. The data in that column could be lost. The data in that column will be cast from `VarChar(191)` to `TinyInt`.
  - You are about to alter the column `Gained_in_Rank` on the `Company` table. The data in that column could be lost. The data in that column will be cast from `VarChar(191)` to `TinyInt`.
  - You are about to alter the column `Global500` on the `Company` table. The data in that column could be lost. The data in that column will be cast from `VarChar(191)` to `TinyInt`.
  - You are about to alter the column `Growth_in_Jobs` on the `Company` table. The data in that column could be lost. The data in that column will be cast from `VarChar(191)` to `TinyInt`.
  - You are about to alter the column `Newcomer_to_the_Fortune500` on the `Company` table. The data in that column could be lost. The data in that column will be cast from `VarChar(191)` to `TinyInt`.
  - You are about to alter the column `Worlds_Most_Admired_Companies` on the `Company` table. The data in that column could be lost. The data in that column will be cast from `VarChar(191)` to `TinyInt`.
  - You are about to alter the column `profitable` on the `Company` table. The data in that column could be lost. The data in that column will be cast from `VarChar(191)` to `TinyInt`.

*/
-- AlterTable
ALTER TABLE `Company` MODIFY `Best_Companies_to_Work_For` BOOLEAN NOT NULL,
    MODIFY `Dropped_in_Rank` BOOLEAN NOT NULL,
    MODIFY `FemaleCEO` BOOLEAN NOT NULL,
    MODIFY `Founder_is_CEO` BOOLEAN NOT NULL,
    MODIFY `Gained_in_Rank` BOOLEAN NOT NULL,
    MODIFY `Global500` BOOLEAN NOT NULL,
    MODIFY `Growth_in_Jobs` BOOLEAN NOT NULL,
    MODIFY `Newcomer_to_the_Fortune500` BOOLEAN NOT NULL,
    MODIFY `Worlds_Most_Admired_Companies` BOOLEAN NOT NULL,
    MODIFY `profitable` BOOLEAN NOT NULL;
