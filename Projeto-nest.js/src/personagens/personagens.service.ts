import { Injectable } from '@nestjs/common';
import { Personagem } from './personagens.model';
import { Model } from 'mongoose';
import { InjectModel } from '@nestjs/mongoose';

@Injectable()
export class PersonagemService {

        constructor(
            @InjectModel('Personagem') private readonly personagemModel: Model<Personagem>
        ){}


  async  findall():Promise<Personagem[]>{
        return this.personagemModel.find().exec();
    }

   async findById(id: string):Promise <Personagem>{
        return this.personagemModel.findById(id).exec();
    }

    async create(personagem: Personagem): Promise<Personagem>{

        const createHero = new this.personagemModel(personagem);

        return createHero.save();
    }
    async update(id: string, personagem: Personagem): Promise <Personagem>{
        return this.personagemModel.findByIdAndUpdate(id, personagem, {new: true}).exec();
    }

    async delete(id: string): Promise<any>{
        return this.personagemModel.findByIdAndDelete(id).exec();
    }

}
