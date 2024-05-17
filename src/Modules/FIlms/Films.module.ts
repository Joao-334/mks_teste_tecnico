import { Module } from "@nestjs/common";
import { TypeOrmModule } from "@nestjs/typeorm";
import { FilmsController } from "src/Controllers/Films/Films.controller";
import { FilmEntity } from "src/Entitys/Films/Film.entity";
import { UserEntity } from "src/Entitys/User/User.entity";
import { FilmService } from "src/Services/Films/Film.service";
import { UserService } from "src/Services/Users/User.service";

@Module({
    imports: [TypeOrmModule.forFeature([FilmEntity, UserEntity])],
    controllers: [FilmsController],
    providers: [FilmService, UserService]
})
export class FilmsModule {

}