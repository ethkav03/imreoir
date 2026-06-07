import { Module } from '@nestjs/common'
import { PrismaModule } from './prisma/prisma.module'
import { PlayersModule } from './modules/players/players.module'

@Module({
  imports: [PrismaModule, PlayersModule],
})
export class AppModule { }