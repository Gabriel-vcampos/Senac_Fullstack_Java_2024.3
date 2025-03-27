import { Test, TestingModule } from '@nestjs/testing';
import { PersonagensController } from './personagens.controller';

describe('PersonagensController', () => {
  let controller: PersonagensController;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      controllers: [PersonagensController],
    }).compile();

    controller = module.get<PersonagensController>(PersonagensController);
  });

  it('should be defined', () => {
    expect(controller).toBeDefined();
  });
});
