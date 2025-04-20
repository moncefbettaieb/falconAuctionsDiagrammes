CREATE TABLE users (
    id UUID PRIMARY KEY,
    email TEXT UNIQUE,
    role TEXT,
    created_at TIMESTAMP DEFAULT now()
);

CREATE TABLE falcons (
    id UUID PRIMARY KEY,
    name TEXT,
    species TEXT,
    weight REAL,
    user_id UUID REFERENCES users(id)
);

CREATE TABLE auctions (
    id UUID PRIMARY KEY,
    type TEXT,
    start TIMESTAMP,
    end TIMESTAMP,
    falcon_id UUID REFERENCES falcons(id)
);

CREATE TABLE bids (
    id UUID PRIMARY KEY,
    amount NUMERIC,
    user_id UUID REFERENCES users(id),
    auction_id UUID REFERENCES auctions(id),
    created_at TIMESTAMP DEFAULT now()
);

CREATE TABLE products (
    id UUID PRIMARY KEY,
    name TEXT,
    price NUMERIC,
    category TEXT
);

CREATE TABLE orders (
    id UUID PRIMARY KEY,
    user_id UUID REFERENCES users(id),
    total NUMERIC,
    status TEXT
);

CREATE TABLE order_lines (
    id UUID PRIMARY KEY,
    order_id UUID REFERENCES orders(id),
    product_id UUID REFERENCES products(id),
    quantity INT
);

CREATE TABLE payments (
    id UUID PRIMARY KEY,
    order_id UUID REFERENCES orders(id),
    method TEXT,
    status TEXT,
    paid_at TIMESTAMP
);

CREATE TABLE health_checks (
    id UUID PRIMARY KEY,
    falcon_id UUID REFERENCES falcons(id),
    type TEXT,
    date DATE,
    result TEXT,
    center_id UUID
);