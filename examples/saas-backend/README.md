# Self-Hosted SaaS Backend Demo

This example sets up a complete SaaS backend using Aurekai's infrastructure binaries: API gateway, authentication, API keys, rate limiting, and billing.

## What you get

- **HTTP API gateway** with static file serving (dashboard)
- **User auth** — signup, login, session tokens
- **API key provisioning** — Free / Pro / Enterprise tiers
- **Usage metering** — per-operation tracking
- **Billing** — invoices, payments, credits

Total binary size: **~240 KB**. No Node.js. No Docker. No external databases.

## Quick start

```bash
# 1. Build (if you haven't already)
cd ../../
make
cd examples/saas-backend/

# 2. Start the backend
./start.sh
```

## What's inside

| File | Purpose |
|---|---|
| `start.sh` | Starts the API gateway + initializes auth |
| `seed.sh` | Creates demo users and API keys |
| `test-api.sh` | Exercises the API to verify everything works |

## Manual setup

```bash
AKAI=../../cmd

# 1. Start the API gateway (serves dashboard + REST API)
$AKAI/AkaiAPI/akai-api --port 9090 --static ../../frontend/ serve &
API_PID=$!

# 2. Create a user
$AKAI/AkaiAuth/akai-auth signup \
    --email demo@example.com \
    --password demo123

# 3. Issue an API key
$AKAI/AkaiGate/akai-gate issue \
    --email demo@example.com \
    --tier pro

# 4. Check usage
$AKAI/AkaiMeter/akai-meter status --email demo@example.com

# 5. Generate an invoice
$AKAI/AkaiPay/akai-pay invoice \
    --user-id 1 \
    --period 2026-04

# Clean up
kill $API_PID
```

## Architecture

```
                        ┌─────────────────┐
                        │   akai-api    │  ← HTTP gateway (port 9090)
                        │   69 KB binary   │
                        └────────┬────────┘
                                 │
              ┌──────────────────┼──────────────────┐
              │                  │                   │
     ┌────────┴───────┐  ┌──────┴──────┐  ┌────────┴───────┐
     │  akai-auth  │  │ akai-gate│  │  akai-pay   │
     │  35 KB         │  │  33 KB      │  │  35 KB         │
     │  signup/login  │  │  API keys   │  │  invoicing     │
     └────────────────┘  └─────────────┘  └────────────────┘
              │                  │                   │
              └──────────────────┼──────────────────┘
                                 │
                        ┌────────┴────────┐
                        │  akai-meter  │
                        │  34 KB          │
                        │  usage tracking │
                        └─────────────────┘
```

All state lives in SQLite. No external database required.

## API key tiers

| Tier | Rate limit | Features |
|---|---|---|
| Free | 100 req/hr | Basic API access |
| Pro | 10,000 req/hr | Full pipeline, priority queue |
| Enterprise | Unlimited | Custom SLAs, dedicated support |
