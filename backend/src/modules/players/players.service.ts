import { Injectable } from '@nestjs/common'
import { PlayersRepository } from './players.repository'
import { CreatePlayerDto } from './dto/create-player.dto'
import { UpdatePlayerDto } from './dto/update-player.dto'

@Injectable()
export class PlayersService {
    constructor(private repo: PlayersRepository) { }

    create(dto: CreatePlayerDto) {
        // business logic goes here (validation, rules, etc.)
        return this.repo.create(dto)
    }

    findAll() {
        return this.repo.findAll()
    }

    findOne(id: number) {
        return this.repo.findById(id)
    }

    update(id: number, dto: UpdatePlayerDto) {
        return this.repo.update(id, dto)
    }

    remove(id: number) {
        return this.repo.delete(id)
    }
}