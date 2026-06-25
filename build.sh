#!/bin/bash
# build.sh — Acreedom build script (GNU IceCat fork)
set -e

ACREEDOM_NAME="Acreedom"
ACREEDOM_VERSION="${1:-$(date +%Y.%m.%d)}"
MACHBB="${MACHBB:-machbb}"

echo "━━ $ACREEDOM_NAME Build v$ACREEDOM_VERSION ━━"

# Ensure we're in the source tree
if [ ! -f "moz.build" ] && [ ! -f "old-configure.in" ]; then
    echo "Error: Run from within the Acreedom/IceCat source tree"
    echo "Or set ACREEDOM_SOURCE to the source directory"
    exit 1
fi

echo ""
echo "→ Bootstrapping..."
$MACHBB bootstrap

echo ""
echo "→ Configuring..."
$MACHBB configure --release

echo ""
echo "→ Building..."
$MACHBB build

echo ""
echo "→ Packaging..."
$MACHBB package

echo ""
echo "━━ Build complete! ━━"
echo "   Version: $ACREEDOM_VERSION"
