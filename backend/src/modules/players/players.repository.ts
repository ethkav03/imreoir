import { Injectable } from '@nestjs/common'
import { PrismaService } from '../../prisma/prisma.service'
import { CreatePlayerDto } from './dto/create-player.dto'
import { UpdatePlayerDto } from './dto/update-player.dto'

@Injectable()
export class PlayersRepository {
    constructor(private prisma: PrismaService) { }

    create(data: CreatePlayerDto) {
        return this.prisma.player.create({
            data: {
                first_name: data.first_name,
                last_name: data.last_name,
                created_at: data.created_at
            },
        })
    }

    findAll() {
        return this.prisma.player.findMany()
    }

    findById(id: number) {
        return this.prisma.player.findUnique({ where: { id } })
    }

    update(id: number, data: UpdatePlayerDto) {
        return this.prisma.player.update({
            where: { id },
            data,
        })
    }

    delete(id: number) {
        return this.prisma.player.delete({ where: { id } })
    }
}