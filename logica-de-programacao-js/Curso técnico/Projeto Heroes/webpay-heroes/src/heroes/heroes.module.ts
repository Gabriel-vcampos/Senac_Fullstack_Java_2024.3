import { Module } from '@nestjs/common';
import { HeroesController } from './heroes.controller';
import { HeroesService } from './heroes.service';
import { HeroSchema } from './model/heroes.model';
import {MongooseModule} from '@nestjs/mongoose'


@Module({
  imports:[MongooseModule.forFeature([{name: 'Hero' , schema: HeroSchema}])],
  controllers: [HeroesController],
  providers: [HeroesService]
})
export class HeroesModule {}
