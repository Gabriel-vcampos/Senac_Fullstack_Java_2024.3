import { Controller, Post, Body, Get, Put, Param, Delete, UseGuards, UseInterceptors, Options } from '@nestjs/common';
import { UserService } from './user.service';
import { IUser } from './interfaces/user.interface';
import { JwtAuthGuard } from 'src/auth/jwt.auth.guard';
import { CorsInterceptor } from 'src/interceptors/cors.interceptor';

@Controller('user')
@UseInterceptors(CorsInterceptor)
export class UserController {
constructor(private userService: UserService){}

@Post()
 async createUser(@Body() body: IUser): Promise<IUser> {
    return this.userService.createUser(body);
  }

  @UseGuards(JwtAuthGuard)
  @Get()
  async getAllUsers(): Promise<IUser[]> {
    return this.userService.getAllUsers();
  }


  @UseGuards(JwtAuthGuard)
  @Get(':id')
  async getUserById(@Param('id') id: string): Promise<IUser | null> {
    return this.userService.getUserById(id);
  }
  @UseGuards(JwtAuthGuard)

  @Get('email/:email')
  async getUserByEmail(@Param('email') email: string): Promise<IUser | null> {
    return this.userService.getUserByEmail(email);
  }
  
  @UseGuards(JwtAuthGuard)
  @Put(':id')
  async updateUser(@Param('id') id: string, @Body() body: Partial<IUser>): Promise<IUser | null> {
    return this.userService.updateUser(id, body);
  }
  @UseGuards(JwtAuthGuard)
  @Delete(':id')
  async deleteUser(@Param('id') id: string): Promise<IUser | null> {
    return this.userService.deleteUser(id);
  }
  @Options()
    options() {
      return {};  
    }
    @Options(":id")
    options1() {
      return {};  
    }
}

