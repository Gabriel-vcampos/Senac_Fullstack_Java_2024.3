import { Controller, Get, Post, Body, Param , Patch , Delete } from '@nestjs/common';
import { PersonagemService } from './personagens.service';
import { Personagem } from './personagens.model';

@Controller('personagens')
export class PersonagensController {

    constructor (private readonly personagemService: PersonagemService){}

    @Get()
    findALL(): Promise <Personagem[]>{
        return this.personagemService.findall();
    }

    @Get(':id')
    findById(@Param('id')id: string): Promise <Personagem> {
        return this.personagemService.findById(id);
    }

    @Post()
    create(@Body()personagem: Personagem): Promise  <Personagem>{
        return this.personagemService.create(personagem);
    }

    @Patch()
    update(@Param('id') id:string, @Body() personagem: Personagem): Promise <Personagem>{
        return this.personagemService.update(id,personagem);
    }

    @Delete(':id')
    delete(@Param('id') id: string): Promise<any>{
        return this.personagemService.delete(id);
    }

}
