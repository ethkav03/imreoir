-- AlterTable
ALTER TABLE "Attendance" ALTER COLUMN "id" DROP DEFAULT;
DROP SEQUENCE "Attendance_id_seq";

-- AlterTable
ALTER TABLE "Match" ALTER COLUMN "id" DROP DEFAULT;
DROP SEQUENCE "Match_id_seq";

-- AlterTable
ALTER TABLE "Player" ALTER COLUMN "id" DROP DEFAULT;
DROP SEQUENCE "Player_id_seq";

-- AlterTable
ALTER TABLE "Stats" ALTER COLUMN "id" DROP DEFAULT;
DROP SEQUENCE "Stats_id_seq";

-- AlterTable
ALTER TABLE "Team" ALTER COLUMN "id" DROP DEFAULT;
DROP SEQUENCE "Team_id_seq";

-- AlterTable
ALTER TABLE "TrainingSession" ALTER COLUMN "id" DROP DEFAULT;
DROP SEQUENCE "TrainingSession_id_seq";
