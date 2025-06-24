# BallotBox - Django E-Voting System

A web-based electronic voting system built with Django that allows secure online voting for elections.

## Features

- User authentication and authorization
- Admin panel for election management
- Candidate management with photos and bios
- Position-based voting system
- OTP verification for voters
- Vote tracking and results
- Responsive web interface

## Setup Instructions

### Prerequisites

- Python 3.8 or higher
- pip (Python package installer)

### Installation

1. **Clone the repository:**
   ```bash
   git clone <repository-url>
   cd BallotBox-main
   ```

2. **Create a virtual environment:**
   ```bash
   python3 -m venv venv
   ```

3. **Activate the virtual environment:**
   ```bash
   source venv/bin/activate  # On macOS/Linux
   # or
   venv\Scripts\activate     # On Windows
   ```

4. **Install dependencies:**
   ```bash
   pip install -r requirements.txt
   ```

5. **Configure the database:**
   The project is configured to use SQLite by default for development. If you want to use PostgreSQL or MySQL, edit the `DATABASES` setting in `e_voting/settings.py`.

6. **Run migrations:**
   ```bash
   python manage.py makemigrations
   python manage.py migrate
   ```

7. **Create a superuser:**
   ```bash
   python manage.py createsuperuser
   ```

8. **Start the development server:**
   ```bash
   python manage.py runserver 8080
   ```

9. **Access the application:**
   - Main application: http://127.0.0.1:8080/
   - Admin panel: http://127.0.0.1:8080/admin/

## Project Structure

```
BallotBox/
├── account/          # User authentication and management
├── administrator/    # Admin interface templates and views
├── voting/          # Core voting functionality
├── e_voting/        # Main Django project settings
├── static/          # Static files (CSS, JS, images)
├── media/           # User uploaded files
├── manage.py        # Django management script
└── requirements.txt # Python dependencies
```

## Key Components

### Apps

1. **Account App**: Handles user authentication, custom user model with email-based login
2. **Voting App**: Core voting functionality including candidates, positions, and votes
3. **Administrator App**: Admin interface for managing elections

### Models

- **CustomUser**: Extended user model with email authentication
- **Voter**: Voter profile with OTP verification
- **Position**: Election positions (President, Vice President, etc.)
- **Candidate**: Candidate information with photos and bios
- **Votes**: Individual vote records

## Development

### VS Code Tasks

The project includes pre-configured VS Code tasks:

- **Run Django Server**: Start the development server
- **Make Migrations**: Generate new database migrations
- **Apply Migrations**: Apply database migrations
- **Create Superuser**: Create a new admin user
- **Collect Static Files**: Collect static files for production

Access these via: `Cmd+Shift+P` → `Tasks: Run Task`

### Configuration

Key settings in `e_voting/settings.py`:

- `DEBUG = True` for development
- Database configuration (SQLite by default)
- Static files and media handling
- Custom user model configuration
- OTP settings (`SEND_OTP = False` uses "0000" as default OTP)

## Usage

1. **Admin Setup:**
   - Login to admin panel with superuser credentials
   - Create election positions
   - Add candidates with their information
   - Configure election settings

2. **Voter Registration:**
   - Users can register with email and personal information
   - Phone number verification through OTP
   - Admin approval may be required

3. **Voting Process:**
   - Verified voters can access the voting interface
   - Select candidates for each position
   - Submit votes securely
   - View confirmation

4. **Results:**
   - Admin can view real-time results
   - Generate reports and analytics

## Security Features

- Email-based authentication
- OTP verification for voters
- CSRF protection
- Vote integrity checks
- Admin-only access to sensitive operations

## Production Deployment

For production deployment:

1. Set `DEBUG = False` in settings
2. Configure proper database (PostgreSQL recommended)
3. Set up static file serving
4. Configure email backend for OTP
5. Use HTTPS
6. Set proper `ALLOWED_HOSTS`

## Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Run tests
5. Submit a pull request

## License

This project is open source. Please check the license file for more details.