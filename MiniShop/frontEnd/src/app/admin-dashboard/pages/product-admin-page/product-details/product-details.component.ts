import {
  Component,
  computed,
  inject,
  input,
  OnInit,
  signal,
} from '@angular/core';
import { FormBuilder, ReactiveFormsModule, Validators } from '@angular/forms';
import { firstValueFrom } from 'rxjs';

import { Product } from '@products/interfaces/product.interface';
import { FormUtils } from '@utils/form-utils';
import { ProductsService } from '@products/services/products.service';

import { FormErrorLabelComponent } from '../../../../shared/components/form-error-label/form-error-label.component';
import { Router } from '@angular/router';

@Component({
  selector: 'product-details',
  imports: [
    ReactiveFormsModule,
    FormErrorLabelComponent,
  ],
  templateUrl: './product-details.component.html',
})
export class ProductDetailsComponent implements OnInit {
  product = input.required<Product>();

  router = inject(Router);
  fb = inject(FormBuilder);

  productsService = inject(ProductsService);
  wasSaved = signal(false);
  successMessage = signal<string>(''); 
  
  imageFileList: FileList | undefined = undefined;
  tempImages = signal<string[]>([]);

  imagesToCarousel = computed(() => {
    const currentProductImages = [
      ...this.product().images,
      ...this.tempImages(),
    ];
    return currentProductImages;
  });

  productForm = this.fb.group({
    title: ['', Validators.required],
    description: ['', Validators.required],
    slug: [
      '',
      [Validators.required, Validators.pattern(FormUtils.slugPattern)],
    ],
    price: [0, [Validators.required, Validators.min(0)]],
    stock: [0, [Validators.required, Validators.min(0)]],
    images: [[]],
    tags: [''],
    category: [
      'computer',
      [Validators.required, Validators.pattern(/computer|monitor|accessory/)],
    ],
  });

  ngOnInit(): void {
    this.setFormValue(this.product());
  }

  setFormValue(formLike: Partial<Product>) {
    this.productForm.reset(this.product() as any);
    this.productForm.patchValue({ tags: formLike.tags?.join(',') });
    // this.productForm.patchValue(formLike as any);
  }

  async onSubmit() {
    const isValid = this.productForm.valid;
    this.productForm.markAllAsTouched();

    if (!isValid) return;
    const formValue = this.productForm.value;

    const productLike: Partial<Product> = {
      ...(formValue as any),
      tags:
        formValue.tags
          ?.toLowerCase()
          .split(',')
          .map((tag) => tag.trim()) ?? [],
    };

    if (this.product().id === 'new') {
      // Crear producto
      const product = await firstValueFrom(
        this.productsService.createProduct(productLike, this.imageFileList)
      );
      
      // Mostrar mensaje de éxito antes de redirigir
      this.wasSaved.set(true);
      this.successMessage.set('Producto creado correctamente');

      setTimeout(() => {
        this.wasSaved.set(false);
        this.router.navigate(['/admin/products', product.id]);
      }, 1500);
      
    } else {
      await firstValueFrom(
        this.productsService.updateProduct(
          this.product().id,
          productLike,
          this.imageFileList
        )
      );
      this.wasSaved.set(true);
      this.successMessage.set('Datos actualizados correctamente')
    }
    
    setTimeout(() => {
      this.wasSaved.set(false);
    }, 3000);
  }

  async confirmDelete() {
    try {
      await firstValueFrom(this.productsService.deleteProduct(this.product().id));

      this.router.navigate(['/admin/products'], {
        state: { message: 'Producto eliminado correctamente' }
      });

    } catch (err) {
      this.router.navigate(['/admin/products'], {
        state: { message: 'Error al eliminar el producto' }
      });
    }
  }

  // Images
  onFilesChanged(event: Event) {
    const fileList = (event.target as HTMLInputElement).files;
    this.imageFileList = fileList ?? undefined;

    const imageUrls = Array.from(fileList ?? []).map((file) =>
      URL.createObjectURL(file)
    );

    this.tempImages.set(imageUrls);
  }
}
