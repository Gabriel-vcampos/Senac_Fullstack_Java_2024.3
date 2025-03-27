import { Module } from '@nestjs/common';
import { UserController } from './user.controller';
import { UserService } from './user.service';
import { userSchema } from './models/user.model';
import { MongooseModule } from '@nestjs/mongoose';

@Module({
  controllers: [UserController],
  imports: [MongooseModule.forFeature([{name: 'User', schema: userSchema}])],
  providers: [UserService],
  exports: [UserService]
})
export class UserModule {}
