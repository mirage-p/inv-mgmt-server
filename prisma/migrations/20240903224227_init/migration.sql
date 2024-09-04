/*
  Warnings:

  - The primary key for the `PurchaseSummary` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `purchaseSummary` on the `PurchaseSummary` table. All the data in the column will be lost.
  - Added the required column `purchaseSummaryID` to the `PurchaseSummary` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "PurchaseSummary" DROP CONSTRAINT "PurchaseSummary_pkey",
DROP COLUMN "purchaseSummary",
ADD COLUMN     "purchaseSummaryID" TEXT NOT NULL,
ADD CONSTRAINT "PurchaseSummary_pkey" PRIMARY KEY ("purchaseSummaryID");
