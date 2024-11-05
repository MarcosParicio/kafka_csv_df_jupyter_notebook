# Makefile

# Virtual environment name
VENV_NAME = segundoproyectokafka

# Set up the environment
setup: create_venv install_dependencies

# Create virtual environment using python's venv
create_venv:
	@if [ -d "$(VENV_NAME)" ]; then \
		echo "The virtual environment $(VENV_NAME) already exists."; \
	else \
		echo "Creating the virtual environment $(VENV_NAME)..."; \
		/home/marcosparicio/.pyenv/shims/python3.13 -m venv $(VENV_NAME); \
	fi

# Install pandas from requirements.txt
install_dependencies:
	@echo "Installing pandas..."
	$(VENV_NAME)/bin/pip install --upgrade pip
	$(VENV_NAME)/bin/pip install -r requirements.txt

# Clean virtual environment (optional)
clean:
	@echo "Removing virtual environment..."
	rm -rf $(VENV_NAME)

# para crear el entorno virtual: make setup
# para activarlo: source segundoproyectokafka/bin/activate
# para limpiarlo: make clean
# para desactivarlo: deactivate