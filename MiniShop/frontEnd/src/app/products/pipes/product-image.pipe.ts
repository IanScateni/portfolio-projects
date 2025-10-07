import { Pipe, PipeTransform } from '@angular/core';
import { environment } from 'src/environments/environment';

const baseUrl = environment.baseUrl;

@Pipe({
  name: 'productImage',
  standalone: true,
})
export class ProductImagePipe implements PipeTransform {
  transform(value: null | string | string[]): string {
    if (!value) {
      return './assets/images/no-image.jpg';
    }

    // Si es un string
    if (typeof value === 'string') {
      // Caso 1: blob (upload temporal en front)
      if (value.startsWith('blob:')) return value;

      // Caso 2: URL absoluta (http o https)
      if (value.startsWith('http')) return value;

      // Caso 3: es solo un filename => armo URL del backend
      return `${baseUrl}/files/product/${value}`;
    }

    // Si es un array
    const image = value.at(0);

    if (!image) {
      return './assets/images/no-image.jpg';
    }

    if (image.startsWith('http') || image.startsWith('blob:')) {
      return image;
    }

    return `${baseUrl}/files/product/${image}`;
  }
}