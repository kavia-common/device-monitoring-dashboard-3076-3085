#!/bin/bash
cd /home/kavia/workspace/code-generation/device-monitoring-dashboard-3076-3085/health_dashboard_frontend
npx eslint
ESLINT_EXIT_CODE=$?
npm run build
BUILD_EXIT_CODE=$?
if [ $ESLINT_EXIT_CODE -ne 0 ] || [ $BUILD_EXIT_CODE -ne 0 ]; then
   exit 1
fi

