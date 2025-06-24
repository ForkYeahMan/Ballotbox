#!/bin/bash

# Django E-Voting System - Custom Port Runner
# This script allows you to run the Django server on a custom port

# Default port is 8080, but you can override it by setting the PORT environment variable
# Examples:
#   ./run_server.sh                    # Uses default port 8080
#   PORT=3000 ./run_server.sh          # Uses port 3000
#   export PORT=9000 && ./run_server.sh # Uses port 9000

# Activate virtual environment
source venv/bin/activate

# Get port from environment variable or use default
PORT=${PORT:-8080}

echo "Starting Django server on port $PORT"
echo "Access the application at: http://127.0.0.1:$PORT/"
echo "Admin panel at: http://127.0.0.1:$PORT/admin/"
echo ""
echo "To stop the server, press Ctrl+C"
echo ""

# Run the Django development server
python manage.py runserver 0.0.0.0:$PORT
