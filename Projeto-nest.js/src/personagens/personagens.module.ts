import { Module } from '@nestjs/common';
import { PersonagensController } from './personagens.controller';
import { PersonagemService } from './personagens.service';
import { PersonagemSchema } from './model/personagens.model';
import {MongooseModule} from '@nestjs/mongoose'

@Module({
  imports:[MongooseModule.forFeature([{name: 'Personagem' , schema: PersonagemSchema}])],
  controllers: [PersonagensController],
  providers: [PersonagemService]
})
export class PersonagensModule {}
