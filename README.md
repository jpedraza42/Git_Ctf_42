# Git CTF | Taller de Git en el entorno de 42 Málaga Fundación Telefónica

¡Bienvenidos al Taller de Git para proyectos en grupo!
Se acabó el modo supervivencia de la Piscina. Es hora de aprender a no pisarse el código los unos a los otros.

## 🛠️ Instrucciones de inicio

Para empezar a jugar, sigue estos pasos:

- Haz un Fork de este repositorio (botón arriba a la derecha en GitHub). Esto creará una copia exacta en tu propia cuenta.
- Abre tu terminal en tu equipo del campus 42 Málaga Fundación Telefónica.
- Haz un Clone de TU repositorio (el fork que acabas de crear, no el original del Sensei).
  ```bash
  git clone https://github.com/casimarasn/Git_Ctf_42
  ```
- Entra en la carpeta del repositorio:
  ```bash
  cd ctf-git-42
  ```

A partir de ahora, usarás la herramienta `make` para jugar:

- Para iniciar el juego o abrir el menú interactivo:
  ```bash
  make run
  ```
- Para evaluar tu misión actual rápidamente:
  ```bash
  make check
  ```
- Para ver el mapa de tus ramas (Git Graph):
  ```bash
  make status
  ```

## 📖 Guía de Comandos (Cheatsheet)

Aquí tienes un resumen de tu arsenal. Para superar los retos de este CTF tendrás que deducir qué herramienta usar en cada momento. ¡Piensa antes de teclear!

### Gestión de Ramas

- `git branch`: Muestra la lista de ramas en tu repositorio local.
- `git branch <nombre>`: Crea una nueva rama, pero sin moverte a ella.
- `git checkout -b <nombre>` (o `git switch -c <nombre>`): Crea una rama nueva y te mueve a ella de inmediato.
- `git checkout <nombre>` (o `git switch <nombre>`): Viaja a una rama ya existente.

### Fusión y Conflictos

- `git merge <rama>`: Coge el historial de la `<rama>` indicada y lo intenta fusionar en la rama en la que estás situado actualmente.

**Resolución manual de conflictos:** Si Git te avisa de un conflicto durante un merge, el proceso automático se pausa.
1. Abre el archivo afectado en tu editor (Vim, VSCode...).
2. Localiza y borra las marcas de conflicto de Git (`<<<<<<< HEAD`, `=======`, `>>>>>>>`).
3. Deja el código tal y como debería quedar en su versión final y guarda el archivo.
4. Ejecuta `git add <archivo>` y `git commit` para sellar la fusión.

### Guardado Temporal

- `git stash`: Guarda temporalmente tus archivos modificados a medias (aquellos de los que aún no has hecho commit) en un "cajón" secreto. Deja tu entorno de trabajo completamente limpio para que puedas cambiar de rama sin perder datos.
- `git stash pop`: Saca los archivos a medias de ese cajón y los vuelve a escupir en tu área de trabajo actual para que sigas por donde ibas.

### Migración de Repositorios (Modo Espejo)

- `git clone --mirror <url_origen>`: Descarga una copia de seguridad absoluta de un repositorio. Se trae todas las ramas (incluso las ocultas), el historial completo y las etiquetas de versión.
- `git push --mirror <url_destino>`: Empuja absolutamente todo ese contenido clonado a un nuevo repositorio destino (ideal para migrar proyectos enteros a otro servidor sin perder datos).

### 🚨 Botón de Pánico (Deshacer errores)

- `git revert <hash_del_commit>`: Crea un nuevo commit que hace exactamente lo contrario al commit indicado. Es la forma segura de deshacer errores compartidos en la nube sin borrar el historial.
- `git reset --hard <hash_del_commit>`: Viaja en el tiempo a un commit anterior, borrando y destruyendo todo lo que haya por delante.
- `git push -f`: Fuerza la subida de tu historial local al repositorio remoto. ¡Cuidado! Úsalo solo en tu propia rama para arreglar un error tras un reset, NUNCA en la rama `main` compartida con tus compañeros.

### Herramientas de Inspección

- `git status`: Tu mejor amigo. Te chiva exactamente en qué rama estás, qué archivos están modificados y si hay algún conflicto pendiente. Úsalo constantemente.
- `git log --graph --oneline --all`: Muestra un mapa visual del árbol de ramas y commits (recuerda que tienes el atajo `make status` para no tener que escribir todo esto).

¡Suerte, Git Gud, y que la Norminette os acompañe!


---

## Seguridad al reiniciar el taller

**Atención:** la orden `make reset` de este repositorio utiliza `git reset --hard origin/main` y `git clean -fd`. Puede descartar cambios locales y borrar archivos no versionados. **No la ejecutes en un repositorio con trabajo que quieras conservar.** Revisa primero `git status` y guarda una copia de los cambios importantes. Está pendiente incorporar una confirmación explícita al script.

## Origen y contribuciones

Este repositorio incluye materiales para practicar Git en actividades de aprendizaje colaborativo vinculadas al entorno de **42 Málaga Fundación Telefónica**. La guía de inicio apunta a `casimarasn/Git_Ctf_42` como repositorio de referencia; esa procedencia se mantiene de forma visible. La autoría de las actividades y las contribuciones de cada participante deben verificarse antes de presentarlas como trabajo propio.

Mi interés profesional está en la formación y el desarrollo de personas que trabajan con tecnología. No se atribuyen aquí funciones de dirección ni resultados de talleres que todavía no estén documentados.
