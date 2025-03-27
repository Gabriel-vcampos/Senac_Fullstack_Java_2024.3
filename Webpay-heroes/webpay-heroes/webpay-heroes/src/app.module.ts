import { Module } from '@nestjs/common';
import { AppController } from './app.controller';
import { AppService } from './app.service';
import { HeroesModule } from './heroes/heroes.module';
import { MongooseModule } from '@nestjs/mongoose';
import { UserModule } from './user/user.module';
import { AuthService } from './auth/auth.service';
import { AuthController } from './auth/auth.controller';
import { AuthModule } from './auth/auth.module';
import { JwtStrategy } from './auth/jwt.strategy';

@Module({
  imports: [HeroesModule,
        MongooseModule.forRoot('mongodb+srv://andreysantana49:37590774@cluster0.i1a9e.mongodb.net/'),
        UserModule,
        AuthModule, // URL de conexão com o MongoDB

  ],
  controllers: [AppController, AuthController],
  providers: [AppService, AuthService, JwtStrategy ],
})
export class AppModule {}
