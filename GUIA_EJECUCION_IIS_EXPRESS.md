
## Método 1: Ejecutar desde Visual Studio (Recomendado)

### Opción A: Usar la Barra de Herramientas
1. **Abre el proyecto** en Visual Studio:
   - File → Open → Solution
   - Navega a: `C:\Users\PC\source\repos\CloundGaming\CloundGamingBD\`
   - Selecciona: `CloundGamingBD.slnx`

2. **Ejecuta IIS Express con Chrome**:
   - Busca el dropdown en la barra de herramientas (donde dice "IIS Express")
   - Asegúrate que esté seleccionado "IIS Express (Google Chrome)"
   - Presiona el botón **▶ Play** (o Green Start)

3. **Chrome se abrirá automáticamente**:
   - La URL será algo como: `http://localhost:50000/`
   - Verás la página de inicio con Bootstrap

### Opción B: Usar la Tecla F5
1. Con el proyecto abierto en Visual Studio
2. Presiona **F5** en tu teclado
3. Se ejecutará con la configuración predeterminada (IIS Express + Chrome)

### Opción C: Usar el Menú Debug
1. Abre: **Debug → Start Debugging** (o Ctrl+F5 para sin debug)
2. Se abrirá IIS Express automáticamente con Chrome

---

## Método 2: Desde PowerShell (Avanzado)

```powershell
# Navega a la carpeta del proyecto
cd "C:\Users\PC\source\repos\CloundGaming\CloundGamingBD\"

# Construir la solución
msbuild "CloundGamingBD.sln"

# IIS Express normalmente se inicia desde Visual Studio
# Si necesitas iniciarlo manualmente:
# "C:\Program Files\IIS Express\iisexpress.exe" /path:"C:\Users\PC\source\repos\CloundGaming\CloundGamingBD" /port:50000
```

---

## Verificar que está Funcionando

✅ **Señales de éxito**:
- Chrome se abre automáticamente
- La URL es `http://localhost:XXXX/` (XXXX es un número de puerto)
- Ves una página con:
  - Barra de navegación (Inicio, Acerca de, Contacto)
  - Contenido Bootstrap responsive
  - Sin errores en la consola del navegador (F12)

❌ **Si hay problemas**:

| Problema | Solución |
|----------|----------|
| "Página no encontrada" (404) | Reconstruir solución: Build → Rebuild Solution |
| "Puerto en uso" | Visual Studio asignará otro puerto automáticamente |
| Chrome no abre | Cambiar navegador en Debug → Debug Properties |
| Error de compilación | Verificar que .NET Framework 4.7.2 esté instalado |

---

## Configuración de IIS Express para el Proyecto

Visual Studio automáticamente:
- ✅ Inicia IIS Express en `http://localhost`
- ✅ Asigna un puerto disponible
- ✅ Mapea la carpeta del proyecto como raíz del sitio web
- ✅ Abre Google Chrome

El archivo de configuración se guarda en:
```
C:\Users\PC\AppData\Local\IisExpress\config\applicationhost.config
```

---

## Parar la Ejecución

**En Visual Studio**:
- Presiona **Shift + F5** (Stop Debugging)
- O haz clic en el botón **⏹ Stop** en la barra de herramientas

IIS Express se cerrará automáticamente.

---

## Cambiar Puerto (si es necesario)

Si necesitas un puerto específico:

1. En Visual Studio, abre: **Project Properties**
2. Ve a la pestaña **Web**
3. En "Servers", busca "IIS Express"
4. Cambia el puerto en el campo de URL

---

## Debugging

Si necesitas hacer debug del código:

1. Visual Studio mostrará la aplicación en modo Debug
2. Puedes poner breakpoints en el código C#
3. Abre Developer Tools en Chrome (**F12**) para ver errores JavaScript/HTML

---

**¡Tu proyecto está listo para ejecutar! 🎉**

Simplemente presiona **F5** en Visual Studio y Chrome abrirá tu aplicación.
