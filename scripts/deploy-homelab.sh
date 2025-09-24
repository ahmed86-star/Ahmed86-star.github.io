#!/bin/bash

# 🚀 Homelab Deployment Script
# Automates the deployment of self-hosted services using Docker Compose

set -e

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Configuration
COMPOSE_FILE="docker-compose.yml"
BACKUP_DIR="/opt/backups"
LOG_FILE="/var/log/homelab-deploy.log"

# Function to print colored output
print_status() {
    echo -e "${GREEN}[INFO]${NC} $1"
}

print_warning() {
    echo -e "${YELLOW}[WARNING]${NC} $1"
}

print_error() {
    echo -e "${RED}[ERROR]${NC} $1"
}

# Function to check prerequisites
check_prerequisites() {
    print_status "Checking prerequisites..."
    
    if ! command -v docker &> /dev/null; then
        print_error "Docker is not installed"
        exit 1
    fi
    
    if ! command -v docker-compose &> /dev/null; then
        print_error "Docker Compose is not installed"
        exit 1
    fi
    
    print_status "Prerequisites check passed ✅"
}

# Function to backup existing configuration
backup_config() {
    print_status "Creating backup of existing configuration..."
    
    if [ ! -d "$BACKUP_DIR" ]; then
        mkdir -p "$BACKUP_DIR"
    fi
    
    BACKUP_NAME="homelab-backup-$(date +%Y%m%d-%H%M%S)"
    BACKUP_PATH="$BACKUP_DIR/$BACKUP_NAME"
    
    mkdir -p "$BACKUP_PATH"
    
    # Backup docker-compose.yml if it exists
    if [ -f "$COMPOSE_FILE" ]; then
        cp "$COMPOSE_FILE" "$BACKUP_PATH/"
        print_status "Backed up docker-compose.yml"
    fi
    
    # Backup environment files
    if [ -f ".env" ]; then
        cp ".env" "$BACKUP_PATH/"
        print_status "Backed up environment configuration"
    fi
    
    print_status "Backup created at: $BACKUP_PATH"
}

# Function to deploy services
deploy_services() {
    print_status "Deploying homelab services..."
    
    if [ ! -f "$COMPOSE_FILE" ]; then
        print_error "Docker Compose file not found: $COMPOSE_FILE"
        exit 1
    fi
    
    # Pull latest images
    print_status "Pulling latest Docker images..."
    docker-compose pull
    
    # Deploy services
    print_status "Starting services..."
    docker-compose up -d
    
    # Wait for services to be healthy
    print_status "Waiting for services to become healthy..."
    sleep 30
    
    # Check service status
    docker-compose ps
    
    print_status "Deployment completed successfully! 🎉"
}

# Function to display service URLs
show_service_urls() {
    print_status "Service URLs:"
    echo -e "${BLUE}📊 Grafana:${NC} http://localhost:3000"
    echo -e "${BLUE}🐳 Portainer:${NC} http://localhost:9000"
    echo -e "${BLUE}🏠 Home Assistant:${NC} http://localhost:8123"
    echo -e "${BLUE}🛡️ Pi-hole:${NC} http://localhost:8080/admin"
    echo -e "${BLUE}☁️ Nextcloud:${NC} http://localhost:8000"
    echo -e "${BLUE}🔒 Bitwarden:${NC} http://localhost:8081"
}

# Function to check service health
check_health() {
    print_status "Checking service health..."
    
    UNHEALTHY_SERVICES=$(docker-compose ps --services --filter "status=unhealthy" 2>/dev/null || true)
    
    if [ -z "$UNHEALTHY_SERVICES" ]; then
        print_status "All services are healthy! ✅"
    else
        print_warning "Some services are unhealthy:"
        echo "$UNHEALTHY_SERVICES"
    fi
}

# Function to show logs
show_logs() {
    if [ -n "$1" ]; then
        docker-compose logs -f "$1"
    else
        docker-compose logs -f
    fi
}

# Function to stop services
stop_services() {
    print_status "Stopping homelab services..."
    docker-compose down
    print_status "Services stopped"
}

# Function to restart services
restart_services() {
    print_status "Restarting homelab services..."
    docker-compose restart
    print_status "Services restarted"
}

# Function to update services
update_services() {
    print_status "Updating homelab services..."
    backup_config
    docker-compose pull
    docker-compose up -d
    print_status "Services updated successfully!"
}

# Main script logic
case "$1" in
    "deploy")
        check_prerequisites
        backup_config
        deploy_services
        show_service_urls
        check_health
        ;;
    "stop")
        stop_services
        ;;
    "restart")
        restart_services
        ;;
    "update")
        update_services
        ;;
    "status")
        docker-compose ps
        check_health
        ;;
    "logs")
        show_logs "$2"
        ;;
    "backup")
        backup_config
        ;;
    "urls")
        show_service_urls
        ;;
    *)
        echo "🏠 Homelab Deployment Script"
        echo ""
        echo "Usage: $0 {deploy|stop|restart|update|status|logs|backup|urls}"
        echo ""
        echo "Commands:"
        echo "  deploy   - Deploy all homelab services"
        echo "  stop     - Stop all services"
        echo "  restart  - Restart all services"
        echo "  update   - Update and redeploy services"
        echo "  status   - Show service status"
        echo "  logs     - Show service logs (optionally specify service)"
        echo "  backup   - Backup current configuration"
        echo "  urls     - Show service access URLs"
        echo ""
        exit 1
        ;;
esac