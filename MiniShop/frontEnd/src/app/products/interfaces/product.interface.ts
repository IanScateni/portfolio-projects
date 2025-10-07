import { User } from '@auth/interfaces/user.interface';

export interface ProductsResponse {
  count: number;
  pages: number;
  products: Product[];
}

export interface Product {
  id: string;
  title: string;
  price: number;
  description: string;
  slug: string;
  stock: number;
  category: Category;
  tags: string[];
  images: string[];
  user: User;
}

export enum Category {
  Computer = 'computer',
  Monitor = 'monitor',
  Accessory = 'accesory',
}