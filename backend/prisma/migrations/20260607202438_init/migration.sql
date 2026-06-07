-- CreateTable
CREATE TABLE "Attendance" (
    "id" SERIAL NOT NULL,
    "player_id" INTEGER NOT NULL,
    "Stats_id" INTEGER NOT NULL,
    "training_session_id" INTEGER NOT NULL,

    CONSTRAINT "Attendance_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Match" (
    "opposition_name" VARCHAR(100),
    "venue" VARCHAR(100),
    "date" DATE,
    "time" TIME(6),
    "opposition_goals" INTEGER,
    "opposition_points" INTEGER,
    "referee_name" VARCHAR(100),
    "goals" INTEGER,
    "points" INTEGER,
    "duration_minutes" INTEGER,
    "id" SERIAL NOT NULL,

    CONSTRAINT "matches_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Player" (
    "id" SERIAL NOT NULL,
    "first_name" VARCHAR(100),
    "last_name" VARCHAR(100),
    "created_at" TIMESTAMP(6) DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "Player_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Stats" (
    "total_distance_m" INTEGER,
    "id" SERIAL NOT NULL,

    CONSTRAINT "Stats_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Team" (
    "team_name" VARCHAR(100),
    "level" VARCHAR(100),
    "id" SERIAL NOT NULL,

    CONSTRAINT "teams_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "TrainingSession" (
    "date" DATE,
    "time" TIME(6),
    "duration_minutes" INTEGER,
    "id" SERIAL NOT NULL,

    CONSTRAINT "training_sessions_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "Attendance" ADD CONSTRAINT "Attendance_player_id_fkey" FOREIGN KEY ("player_id") REFERENCES "Player"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Attendance" ADD CONSTRAINT "Attendance_Stats_id_fkey" FOREIGN KEY ("Stats_id") REFERENCES "Stats"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Attendance" ADD CONSTRAINT "Attendance_training_session_id_fkey" FOREIGN KEY ("training_session_id") REFERENCES "TrainingSession"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
