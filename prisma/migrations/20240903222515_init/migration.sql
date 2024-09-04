/*
  Warnings:

  - The primary key for the `PurchaseSummary` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `purchaseSummaryId` on the `PurchaseSummary` table. All the data in the column will be lost.
  - Added the required column `purchaseSummary` to the `PurchaseSummary` table without a default value. This is not possible if the table is not empty.
  - Made the column `changePercentage` on table `PurchaseSummary` required. This step will fail if there are existing NULL values in that column.
  - Made the column `changePercentage` on table `SalesSummary` required. This step will fail if there are existing NULL values in that column.

*/
-- AlterTable
ALTER TABLE "PurchaseSummary" DROP CONSTRAINT "PurchaseSummary_pkey",
DROP COLUMN "purchaseSummaryId",
ADD COLUMN     "purchaseSummary" TEXT NOT NULL,
ALTER COLUMN "changePercentage" SET NOT NULL,
ADD CONSTRAINT "PurchaseSummary_pkey" PRIMARY KEY ("purchaseSummary");

-- AlterTable
ALTER TABLE "SalesSummary" ALTER COLUMN "changePercentage" SET NOT NULL;
