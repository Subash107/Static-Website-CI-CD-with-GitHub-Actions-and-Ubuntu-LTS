docker run --rm `
  -v D:\backup_toolkit\website:/app/website `
  -v D:\backup_toolkit\backups:/app/backups `
  -v D:\backup_toolkit\logs:/app/logs `
  backup-toolkit-image
FROM ubuntu:22.04

RUN apt-get update && apt-get install -y zip curl git

WORKDIR /app

COPY . .

RUN chmod +x backup.sh

CMD ["./backup.sh"]
# Dockerfile for Backup Toolkit
# This Dockerfile sets up an Ubuntu 22.04 environment with necessary tools for backup operations        