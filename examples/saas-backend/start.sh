#!/bin/sh
# Akai SaaS Backend Demo
# Starts the API gateway and seeds demo data.

set -e

BONFYRE_ROOT="$(cd "$(dirname "$0")/../.." && pwd)"
CMD="$BONFYRE_ROOT/cmd"

# Build if needed
for bin in AkaiAPI AkaiAuth AkaiGate AkaiMeter AkaiPay; do
    binary="$CMD/$bin/$(echo "$bin" | sed 's/Aurekai/akai-/' | tr '[:upper:]' '[:lower:]')"
    # normalize: AkaiAPI -> akai-api, etc.
    if [ ! -f "$CMD/$bin/"akai-* ] 2>/dev/null; then
        echo "Building $bin..."
        make -C "$BONFYRE_ROOT" "cmd/$bin"
    fi
done

echo "Starting Akai SaaS backend..."
echo ""

# Start API gateway
echo "[1/4] Starting API gateway on port 9090..."
"$CMD/AkaiAPI/akai-api" --port 9090 --static "$BONFYRE_ROOT/frontend/" serve &
API_PID=$!
sleep 1

# Create demo user
echo "[2/4] Creating demo user..."
"$CMD/AkaiAuth/akai-auth" signup \
    --email demo@example.com \
    --password demo123 2>/dev/null || echo "  (user may already exist)"

# Issue API key
echo "[3/4] Issuing Pro API key..."
"$CMD/AkaiGate/akai-gate" issue \
    --email demo@example.com \
    --tier pro 2>/dev/null || echo "  (key may already exist)"

echo "[4/4] Backend running."
echo ""
echo "  Dashboard: http://localhost:9090"
echo "  API:       http://localhost:9090/api/"
echo "  User:      demo@example.com / demo123"
echo ""
echo "Press Ctrl+C to stop."

# Wait for Ctrl+C
trap "echo ''; echo 'Shutting down...'; kill $API_PID 2>/dev/null; exit 0" INT TERM
wait $API_PID
