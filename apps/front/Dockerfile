FROM my-base-image:nx-base AS builder

WORKDIR /app/builder
COPY . .
RUN npx nx build front

FROM nginx:1.19.2

WORKDIR /usr/share/nginx/html

COPY --from=builder /app/builder/dist/apps/front ./
COPY --from=builder /app/builder/apps/front/nginx.conf /etc/nginx/nginx.conf
