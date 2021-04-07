#!/bin/bash
sed -i "s/EXTERNAL_IP\s*=.*/EXTERNAL_IP=$(curl -s ifconfig.co)/" .env