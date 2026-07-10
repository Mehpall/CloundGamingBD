# 🖼️ Guía Visual - Ejecución en IIS Express

## Paso 1: Abrir Visual Studio

1. **Inicia Visual Studio 2026**
   - Busca en el Inicio de Windows
   - O doble clic en el icono del escritorio

2. **Abre la Solución**
   - File → Open → Project/Solution
   - Navega a: `C:\Users\PC\source\repos\CloundGaming\CloundGamingBD\`
   - Selecciona: `CloundGamingBD.slnx`
   - Click Open

---

## Paso 2: Verificar Configuración

### En la Barra de Herramientas:

```
┌─────────────────────────────────────────┐
│ Solución 'CloundGamingBD' | [▼] CloundGamingBD │
└─────────────────────────────────────────┘
```

- Asegúrate que dice **"IIS Express (Google Chrome)"** en el dropdown
- Si dice otra cosa, haz clic y selecciona **IIS Express (Google Chrome)**

---

## Paso 3: Ejecutar el Proyecto

### Opción A: Botón Play (Recomendado)
```
[▶] IIS Express (Google Chrome)
```
- Busca el botón verde triangular "Play" al lado del dropdown
- Haz clic

### Opción B: Tecla F5
```
Presiona: F5
```

### Opción C: Menú Debug
```
Debug → Start Debugging
```

---

## Paso 4: Esperar a que Compile

**Visual Studio**:
- Compilará el proyecto
- Iniciará IIS Express
- Abrirá Google Chrome

**Indicadores de Progreso**:
- Verás "Building" en la barra de estado
- La compilación tardará 5-15 segundos
- Una vez terminado dirá "Build succeeded"

---

## Paso 5: Chrome Se Abre Automáticamente

**Si todo va bien**:
- ✅ Google Chrome abre automáticamente
- ✅ URL: `http://localhost:50000/` (o similar)
- ✅ Ves la página con:
  - Barra de navegación oscura (Navbar)
  - Contenido Bootstrap
  - Enlaces: Inicio, Acerca de, Contacto

---

## Interfaz de la Aplicación

```
┌────────────────────────────────────────────────┐
│  CloundGaming en Chrome                        │
├────────────────────────────────────────────────┤
│                                                │
│  Nombre de la aplicación                       │
│  ☰  Inicio | Acerca de | Contacto             │
│                                                │
│  ┌──────────────────────────────────────────┐ │
│  │ ASP.NET                                  │ │
│  │ ASP.NET is a free web framework...       │ │
│  │ [Learn more »]                           │ │
│  └──────────────────────────────────────────┘ │
│                                                │
│  [Getting started] [Get more libraries] [etc] │
│                                                │
├────────────────────────────────────────────────┤
│ © 2024 - Mi aplicación ASP.NET                │
└────────────────────────────────────────────────┘
```

---

## Navegación de Prueba

### Haz clic en cada enlace para verificar:

**1. Inicio**
   - URL: `http://localhost:50000/`
   - Contenido: Página de bienvenida ASP.NET

**2. Acerca de**
   - URL: `http://localhost:50000/About`
   - Contenido: Información de la aplicación

**3. Contacto**
   - URL: `http://localhost:50000/Contact`
   - Contenido: Formulario de contacto

### Si todo funciona:
- ✅ Los enlaces clickean sin errores
- ✅ Las páginas cargan correctamente
- ✅ La navegación es fluida

---

## Verificar que NO hay Errores

### Abrir Developer Tools (F12):
```
Chrome → Presionar: F12
```

### Verificar Consola:
- Haz clic en la pestaña "Console"
- ¿Ves errores rojos?
  - ❌ Si: Hay un problema
  - ✅ Si no: ¡Perfecto!

### Verificar Network:
- Haz clic en la pestaña "Network"
- Recarga la página (F5)
- ¿Ves errores (Status 404, 500)?
  - ❌ Si: Hay un problema
  - ✅ Si no: ¡Todo funciona!

---

## Detener la Ejecución

### Cuando termines:

**Opción A: Tecla Shift+F5**
```
Presiona: Shift + F5
```

**Opción B: Botón Stop**
```
Visual Studio → Busca el botón ⏹ rojo
Haz clic
```

**Opción C: Cerrar Chrome**
```
Chrome → Cerrar ventana o pestaña
Visual Studio detectará y parará IIS Express
```

---

## Si Chrome NO se Abre

### Solución Manual:

1. **Espera a que compile**
   - Visual Studio debe decir "Build succeeded"

2. **Abre Chrome manualmente**
   - Copia la URL de la ventana de salida
   - Típicamente: `http://localhost:50000/`

3. **Pega en la barra de dirección**
   ```
   Dirección: http://localhost:50000/
   Presiona: Enter
   ```

---

## Si Ves Error 404

### Significado:
"La página no se encontró"

### Soluciones:

1. **Reconstruir Solución**
   ```
   Visual Studio → Build → Rebuild Solution
   Presiona: F5 nuevamente
   ```

2. **Limpiar Proyecto**
   ```
   Visual Studio → Build → Clean Solution
   Luego → Build → Build Solution
   Presiona: F5
   ```

3. **Reiniciar Visual Studio**
   ```
   Cierra Visual Studio completamente
   Abre de nuevo
   Presiona: F5
   ```

---

## Si Ves Error 500

### Significado:
"Error interno del servidor"

### Soluciones:

1. **Ver detalles del error**
   - Abre Visual Studio
   - View → Error List
   - Busca mensajes de error

2. **Reconstruir**
   ```
   Build → Rebuild Solution
   ```

3. **Verificar referencias**
   ```
   Project → Properties → References
   Asegúrate que todas estén OK
   ```

---

## Desarrollo / Editar Código

### Mientras IIS Express está ejecutándose:

1. **Edita el código en Visual Studio**
   ```
   Haz cambios en cualquier archivo .cs o .aspx
   ```

2. **Guarda (Ctrl+S)**
   ```
   Presiona: Ctrl + S
   ```

3. **Visual Studio recompila automáticamente**
   - Verás "Build started" en la barra de estado
   - Espera a que termine

4. **Recarga Chrome (F5)**
   ```
   Chrome → Presiona: F5 (o Ctrl+R)
   ```

5. **Ves los cambios**
   - ✅ Los cambios se aplican instantáneamente

---

## Debugging (Encontrar Errores)

### Si quieres debuggear código:

1. **Coloca un breakpoint**
   - Haz clic en la línea de código en Visual Studio
   - Presiona: F9 (o clic izquierdo en el margen izquierdo)
   - Verás un punto rojo

2. **Ejecuta acción en Chrome**
   ```
   Chrome → Haz clic en un botón o enlace que ejecute ese código
   ```

3. **Visual Studio pausa la ejecución**
   - Se detiene en el breakpoint
   - Puedes ver variables, step-by-step, etc.

4. **Continuar (F5)**
   ```
   Presiona: F5 para continuar
   ```

---

## Problemas Comunes y Soluciones Rápidas

| Problema | Solución |
|----------|----------|
| Puerto en uso | Reiniciar Visual Studio |
| Chrome no abre | Abrir manualmente la URL |
| Error 404 | Rebuild Solution |
| Error 500 | Verificar Error List |
| Cambios no se aplican | Reconstruir y recargar |
| Lento | Limpiar (Clean Solution) |

---

## Tabla de Teclas Rápidas

| Acción | Tecla |
|--------|-------|
| Ejecutar | **F5** |
| Stop | **Shift + F5** |
| Guardar | **Ctrl + S** |
| Rebuild | **Ctrl + Shift + B** |
| Breakpoint | **F9** |
| Chrome Reload | **F5** |
| Chrome Hard Reload | **Ctrl + Shift + R** |
| Developer Tools | **F12** |
| Buscar en código | **Ctrl + F** |

---

## ✅ Checklist Final

- [ ] Visual Studio abierto
- [ ] CloundGamingBD.slnx cargado
- [ ] Dropdown dice "IIS Express (Google Chrome)"
- [ ] Presionaste F5
- [ ] Chrome se abrió
- [ ] URL es http://localhost:XXXX/
- [ ] Ves la página de inicio
- [ ] Navegación funciona
- [ ] Sin errores en Console (F12)
- [ ] No hay errores 404 o 500

**Si todo está checkado: ✅ ¡LISTO!**

---

## Pantalla Esperada

```
┌────────────────────────────────────────────────┐
│ http://localhost:50000/        Chrome          │
├────────────────────────────────────────────────┤
│                                                │
│  ▰▰▰▰▰▰▰▰▰▰▰▰▰▰▰▰▰ Nombre de la aplicación   │
│  ☰  Inicio  Acerca de  Contacto               │
│                                                │
│  ╔════════════════════════════════════════╗   │
│  ║ Home Page                              ║   │
│  ║                                        ║   │
│  ║ ASP.NET                                ║   │
│  ║ ASP.NET is a free web framework...     ║   │
│  ║ [Learn more »]                         ║   │
│  ╚════════════════════════════════════════╝   │
│                                                │
│  ┌──────────────┬──────────────┬────────────┐ │
│  │Getting started│ Get libraries │  et...   │ │
│  │              │              │           │ │
│  │ ...content.. │ ...content.. │ ...con... │ │
│  └──────────────┴──────────────┴────────────┘ │
│                                                │
├────────────────────────────────────────────────┤
│ © 2024 - Mi aplicación ASP.NET                │
└────────────────────────────────────────────────┘
```

---

**¡Tu aplicación CloundGaming está lista para funcionar en localhost! 🎉**

**Próximo paso: Presiona F5 en Visual Studio**
