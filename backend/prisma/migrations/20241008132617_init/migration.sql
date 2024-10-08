-- CreateTable
CREATE TABLE `CompanyType` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `type` VARCHAR(191) NOT NULL,

    UNIQUE INDEX `CompanyType_type_key`(`type`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Sector` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) NOT NULL,

    UNIQUE INDEX `Sector_name_key`(`name`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Industry` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) NOT NULL,

    UNIQUE INDEX `Industry_name_key`(`name`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Company` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `rank` INTEGER NOT NULL,
    `name` VARCHAR(191) NOT NULL,
    `ticker` VARCHAR(191) NOT NULL,
    `sectorId` INTEGER NOT NULL,
    `industryId` INTEGER NOT NULL,
    `companyTypeId` INTEGER NOT NULL,
    `profitable` BOOLEAN NOT NULL,
    `founder_is_CEO` BOOLEAN NOT NULL,
    `femaleCEO` BOOLEAN NOT NULL,
    `growth_in_jobs` BOOLEAN NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `Company` ADD CONSTRAINT `Company_sectorId_fkey` FOREIGN KEY (`sectorId`) REFERENCES `Sector`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Company` ADD CONSTRAINT `Company_industryId_fkey` FOREIGN KEY (`industryId`) REFERENCES `Industry`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Company` ADD CONSTRAINT `Company_companyTypeId_fkey` FOREIGN KEY (`companyTypeId`) REFERENCES `CompanyType`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
