FROM my-base-image:nx-base AS builder

WORKDIR /app/builder
COPY . .
RUN npx nx build api

FROM my-base-image:nx-base

WORKDIR /app
COPY --from=builder /app/builder ./

CMD ["node", "./dist/apps/api/main.js"]
