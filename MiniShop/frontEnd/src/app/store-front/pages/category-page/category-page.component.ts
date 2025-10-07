import { Component, inject } from '@angular/core';
import { rxResource, toSignal } from '@angular/core/rxjs-interop';
import { ActivatedRoute } from '@angular/router';
import { map, of } from 'rxjs';

import { ProductCardComponent } from '@products/components/product-card/product-card.component';
import { ProductsService } from '@products/services/products.service';
import { PaginationComponent } from '@shared/components/pagination/pagination.component';
import { PaginationService } from '@shared/components/pagination/pagination.service';

@Component({
  selector: 'app-category-page',
  imports: [ProductCardComponent, PaginationComponent],
  templateUrl: './category-page.component.html',
})
export class CategoryPageComponent {
  route = inject(ActivatedRoute);
  productsService = inject(ProductsService);
  paginationService = inject(PaginationService);

  categoryMap: Record<string, string> = {
    computer: 'computadores',
    monitor: 'monitores',
    accessory: 'accesorios'
  };

  category = toSignal(this.route.params.pipe(map(({ category }) => category)));

  get categoryName(): string {
    return this.categoryMap[this.category()] ?? this.category();
  }

  productsResource = rxResource({
    request: () => ({
      category: this.category(),
      page: this.paginationService.currentPage() - 1,
    }),
    loader: ({ request }) => {
      return this.productsService.getProducts({
        category: request.category,
        offset: request.page * 9,
      });
    },
  });
}
