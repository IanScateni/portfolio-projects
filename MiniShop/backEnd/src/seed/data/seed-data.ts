import * as bcrypt from 'bcrypt';

interface SeedProduct {
    description: string;
    images: string[];
    stock: number;
    price: number;
    slug: string;
    tags: string[];
    title: string;
    category: 'computer'|'monitor'|'accessory'
}

interface SeedUser {
    email:    string;
    fullName: string;
    password: string;
    roles:     string[];
}


interface SeedData {
    users: SeedUser[];
    products: SeedProduct[];
}


export const initialData: SeedData = {

    users: [
        {
            email: 'admin@minishop.com',
            fullName: 'Admin One',
            password: bcrypt.hashSync( 'Admin123', 10 ),
            roles: ['admin']
        },
        {
            email: 'user@minishop.com',
            fullName: 'User Two',
            password: bcrypt.hashSync( 'User123', 10 ),
            roles: ['user','super']
        }
    ],

    products: <SeedProduct[]>[
        {
        title: "Laptop Dell Inspiron",
        description: "Laptop de trabajo confiable con procesador Intel i7",
        images: [
            "https://picsum.photos/800/600?random=201",
            "https://picsum.photos/800/600?random=202"
        ],
        stock: 20,
        price: 1500,
        slug: "laptop-dell-inspiron",
        tags: ["work", "office", "intel"],
        category: "computer"
        },
        {
        title: "Monitor Samsung 32'' Curvo",
        description: "Monitor curvo 144Hz para gaming inmersivo",
        images: [
            "https://picsum.photos/800/600?random=203",
            "https://picsum.photos/800/600?random=204"
        ],
        stock: 25,
        price: 700,
        slug: "monitor-samsung-32",
        tags: ["gaming", "curved", "144hz"],
        category: "monitor"
        },
        {
        title: "Teclado Mecánico Redragon",
        description: "Teclado gamer mecánico RGB con switches azules",
        images: [
            "https://picsum.photos/800/600?random=205",
            "https://picsum.photos/800/600?random=206"
        ],
        stock: 40,
        price: 120,
        slug: "teclado-redragon",
        tags: ["keyboard", "gaming", "rgb"],
        category: "accessory"
        },
        {
        title: "Mouse Logitech MX Master 3S",
        description: "Mouse inalámbrico ergonómico con batería recargable",
        images: [
            "https://picsum.photos/800/600?random=207",
            "https://picsum.photos/800/600?random=208"
        ],
        stock: 35,
        price: 150,
        slug: "mouse-logitech-mx-master-3s",
        tags: ["mouse", "office", "wireless"],
        category: "accessory"
        },
        {
        title: "SSD Samsung 990 Pro 2TB",
        description: "Unidad SSD NVMe Gen4 ultrarrápida",
        images: [
            "https://picsum.photos/800/600?random=209"
        ],
        stock: 50,
        price: 280,
        slug: "ssd-samsung-990-pro-2tb",
        tags: ["storage", "nvme", "2tb"],
        category: "accessory"
        }
    ]
}