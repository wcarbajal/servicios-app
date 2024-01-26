/*
  Warnings:

  - You are about to drop the column `apellidoMat` on the `Usuarios` table. All the data in the column will be lost.
  - You are about to drop the column `apellidoPat` on the `Usuarios` table. All the data in the column will be lost.
  - You are about to drop the column `createdAt` on the `Usuarios` table. All the data in the column will be lost.
  - You are about to drop the column `nombreUsuario` on the `Usuarios` table. All the data in the column will be lost.
  - You are about to drop the column `nombres` on the `Usuarios` table. All the data in the column will be lost.
  - A unique constraint covering the columns `[username]` on the table `Usuarios` will be added. If there are existing duplicate values, this will fail.
  - Added the required column `firstname` to the `Usuarios` table without a default value. This is not possible if the table is not empty.
  - Added the required column `lastname` to the `Usuarios` table without a default value. This is not possible if the table is not empty.
  - Added the required column `username` to the `Usuarios` table without a default value. This is not possible if the table is not empty.
  - Made the column `password` on table `Usuarios` required. This step will fail if there are existing NULL values in that column.

*/
-- AlterTable
ALTER TABLE "Usuarios" DROP COLUMN "apellidoMat",
DROP COLUMN "apellidoPat",
DROP COLUMN "createdAt",
DROP COLUMN "nombreUsuario",
DROP COLUMN "nombres",
ADD COLUMN     "createdat" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "firstname" TEXT NOT NULL,
ADD COLUMN     "lastname" TEXT NOT NULL,
ADD COLUMN     "modifiedat" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "username" TEXT NOT NULL,
ALTER COLUMN "password" SET NOT NULL;

-- CreateIndex
CREATE UNIQUE INDEX "Usuarios_username_key" ON "Usuarios"("username");
