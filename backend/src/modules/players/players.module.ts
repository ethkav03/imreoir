import { Module } from '@nestjs/common'
import { PlayersController } from './players.controller'
import { PlayersService } from './players.service'
import { PlayersRepository } from './players.repository'
import { PrismaModule } from '../../prisma/prisma.module'

@Module({
  imports: [PrismaModule],
  controllers: [PlayersController],
  providers: [PlayersService, PlayersRepository],
})
export class PlayersModule { }