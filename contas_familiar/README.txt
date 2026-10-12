CONTAS JANA Y HERNÁN — edición familiar sincronizada

1. Crear proyecto en supabase.com.
2. SQL Editor: ejecutar schema.sql. En Database > Publications > supabase_realtime, habilitar family_data (opcional, para actualización inmediata; sin ello sincroniza al volver a la app).
3. Authentication > Providers > Email: habilitar Email; crear un usuario familiar desde Authentication > Users > Add user (con correo y contraseña). No compartir claves aquí en ChatGPT.
4. Project Settings > API: copiar Project URL y clave pública anon/publishable (NUNCA service_role/secret).
5. Editar index.html: reemplazar SUPABASE_URL_AQUI y SUPABASE_PUBLIC_KEY_AQUI.
6. Publicar carpeta en hosting HTTPS estático (Netlify Drop, GitHub Pages, etc.). No basta abrir el archivo local para instalar como PWA.
7. Abrir la misma dirección en ambos celulares e iniciar sesión con la misma cuenta familiar. En iPhone: Safari > Compartir > Añadir a pantalla de inicio. Android: Chrome > Instalar aplicación/Añadir a pantalla principal.
8. Si había datos de la versión 5, exportar respaldo JSON desde la versión 5 y luego importarlo en la nueva app. Hacerlo UNA SOLA VEZ desde un celular.

IMPORTANTE: La aplicación almacena registros familiares en Supabase y permite que ambos dispositivos los vean. La cuenta familiar compartida no distingue quién registró cada movimiento. No es una conexión automática con bancos. La sincronización requiere Internet.
