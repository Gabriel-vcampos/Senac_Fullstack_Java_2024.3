import { Module } from '@nestjs/common';
import { AppController } from './app.controller';
import { AppService } from './app.service';
import { PersonagensModule } from './personagens/personagens.module';
import { MongooseModule } from '@nestjs/mongoose';

@Module({
  imports: [PersonagensModule,
    MongooseModule.forRoot('mongodb://root:example@localhost/heroes?authSource=admin'),
  ],
  controllers: [AppController],
  providers: [AppService],
})
export class AppModule {}
