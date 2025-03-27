
import { Controller, Post, Body, Options, UseInterceptors} from '@nestjs/common';
import { AuthService } from './auth.service';
import { CorsInterceptor } from 'src/interceptors/cors.interceptor';

@Controller('auth')
@UseInterceptors(CorsInterceptor)

export class AuthController {
    constructor(private authService: AuthService){}
    @Post('login')
    async login(@Body() body: {email: string, password: string}): Promise<{accessToken: string}> {
        return { accessToken: await this.authService.login(body.email, body.password) };
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
