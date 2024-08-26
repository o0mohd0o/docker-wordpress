# Makefile to manage Docker containers

.PHONY: start stop deploy clean

# Start the containers
start:
	@docker-compose up -d
	@echo "Containers are up and running."

# Stop the containers
stop:
	@docker-compose down
	@echo "Containers stopped."

# Deploy the containers (build and start)
deploy: stop start
	@echo "Containers deployed."

# Clean up all containers and volumes
clean:
	@docker-compose down -v
	@echo "Containers and volumes removed."
