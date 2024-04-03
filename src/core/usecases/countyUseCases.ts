import { County, CountyRepository } from "../interfaces/countyInterfaces";

export class CreateCountyUseCase {
  constructor(private countyRepository: CountyRepository) {}

  async execute(countyData: County): Promise<County> {
    // Validar los datos del condado si es necesario
    return await this.countyRepository.createCounty(countyData);
  }
}

export class GetCountyByIdUseCase {
  constructor(private countyRepository: CountyRepository) {}

  async execute(id: number): Promise<County | null> {
    return await this.countyRepository.getCountyById(id);
  }
}

export class UpdateCountyUseCase {}

export class DeleteCountyUseCase {}
