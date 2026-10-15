.PHONY: all run check status reset

# Si escriben solo 'make', ejecutará 'make run' por defecto
all: run

# Lanza el Game Master interactivo
run:
	@./git-gud

# Lanza el evaluador de forma manual
check:
	@./check

# Atajo útil para ver el árbol de ramas en cualquier momento
status:
	@git --no-pager log --graph --oneline --all

# Reinicia el progreso del juego y limpia el repositorio
reset:
	@printf '\nATENCIÓN: esta operación eliminará cambios locales y archivos sin seguimiento.\n'
	@git status --short
	@printf 'Para confirmar escribe REINICIAR: '; \
	read answer; \
	if [ "$$answer" != "REINICIAR" ]; then echo 'Cancelado; no se han hecho cambios.'; exit 1; fi
	@git checkout main
	@git reset --hard origin/main
	@git clean -fd
	@rm -f .ctf_state
	@rm -rf .lvl4_sim
	@git branch -D fix-norminette 2>/dev/null || true
	@git branch -D compañero-rama 2>/dev/null || true
	@echo 'Entorno restablecido.'
