FROM nginx:alpine

# Copy libraries
COPY [                                                   \
  "node_modules/zone.js/dist/zone.min.js",               \
  "node_modules/socket.io-client/dist/socket.io.min.js", \
  "node_modules/reflect-metadata/Reflect.js",            \
  "/usr/share/nginx/html/lib/"                           \
]

# Copy source
COPY [                                        \
  "node_modules/oscar-ui/dist/oscars.min.js", \
  "node_modules/oscar-ui/dist/index.html",    \
  "node_modules/oscar-ui/dist/app.css",       \
  "/usr/share/nginx/html/"                    \
]

# Copy configuration
COPY [ "nginx.conf", "/etc/nginx/nginx.conf" ]
