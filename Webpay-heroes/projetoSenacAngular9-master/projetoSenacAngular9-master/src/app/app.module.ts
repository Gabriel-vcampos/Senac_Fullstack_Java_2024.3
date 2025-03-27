import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';

import { ModuleComponent } from './module/module.component';

import { HeaderModule } from './header/header.module';
import { FooterModule } from './footer/footer.module';
import { HomeModule } from './home/home.module';
import { HeroesComponent } from './heroes/heroes.component';
import { HttpClient, HttpClientModule } from '@angular/common/http';
import { FormsModule } from '@angular/forms';
import { HeroesModule } from './heroes/heroes.module';
import { LoginComponent } from './login/login.component';
import { LoginModule } from './login/login.module';
import { UsersComponent } from './users/users.component';
import { UsersModule } from './users/users.module';

@NgModule({
  declarations: [
    AppComponent,
    ModuleComponent,



  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    HeaderModule,
    LoginModule,
   FormsModule,
    FooterModule,
    UsersModule,
    HomeModule,
    FormsModule,
    HeroesModule,
    HttpClientModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
