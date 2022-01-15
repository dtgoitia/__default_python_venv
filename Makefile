create_venv:
	scripts/create_venv.sh

upgrade:
	. .venv/bin/activate; \
		scripts/upgrade_all_pip_dependencies.sh