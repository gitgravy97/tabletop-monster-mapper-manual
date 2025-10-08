-- CreateEnum
CREATE TYPE "EnemySize" AS ENUM ('xs', 'sm', 'md', 'lg', 'xl');

-- CreateTable
CREATE TABLE "System" (
    "id" UUID NOT NULL,
    "name" TEXT NOT NULL,
    "releaseYr" INTEGER,
    "stat_count" INTEGER,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "System_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "SystemConversion" (
    "id" UUID NOT NULL,
    "fromSystemId" UUID NOT NULL,
    "toSystemId" UUID NOT NULL,

    CONSTRAINT "SystemConversion_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "SystemConversion" ADD CONSTRAINT "SystemConversion_fromSystemId_fkey" FOREIGN KEY ("fromSystemId") REFERENCES "System"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "SystemConversion" ADD CONSTRAINT "SystemConversion_toSystemId_fkey" FOREIGN KEY ("toSystemId") REFERENCES "System"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
