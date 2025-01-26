# E-commerce App with Admin Panel

A Flutter e-commerce application with separate interfaces for users and administrators, built using Firebase backend services.

## Features

### User Features

- User Authentication
- Product Browsing
- Product Details with Reviews
- Shopping Cart
- Order Placement and Tracking

### Admin Features

- Admin Authentication
- Product Management (CRUD operations)
- User Management
- Order Status Management

## Setup Instructions

1. **Flutter Setup**

   ```bash
   flutter pub get
   ```

2. **Firebase Setup**

   - Create a new Firebase project
   - Enable Authentication, Firestore, and Storage
   - Download and add google-services.json to android/app/
   - Download and add GoogleService-Info.plist to ios/Runner/
   - Follow Firebase CLI setup for Flutter

3. **Running the App**
   ```bash
   flutter run
   ```

## Architecture

The project follows Clean Architecture principles with the following structure:

```
lib/
├── core/
│   ├── widgets/
│   ├── utils/
│   └── services/
├── features/
│   ├── auth/
│   ├── products/
│   ├── cart/
│   └── admin/
└── shared/
```

## Dependencies

- Firebase (Authentication, Firestore, Storage)
- Provider (State Management)
- Go Router (Navigation)
- Other UI and utility packages

## Contributing

1. Fork the repository
2. Create your feature branch
3. Commit your changes
4. Push to the branch
5. Create a Pull Request

## License

This project is licensed under the MIT License.
