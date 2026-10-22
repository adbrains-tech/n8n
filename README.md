# n8n Setup

Local self-hosted workflow automation using **Node.js / npm**.

---

## Quick Start

### 1. Start n8n
Run using npm:
```bash
npm start
```
Or use the convenience startup script:
```bash
./start.sh
```

### 2. Access the Web Interface
Once started, open your browser at:
[http://localhost:5678](http://localhost:5678)

On your first visit, set up your owner account (name, email, and password).

---

## Managing the Service

| Action | Command |
|---|---|
| **Start** | `npm start` or `./start.sh` |
| **Stop** | `./stop.sh` |
| **Check Version** | `npm run version` |
| **Update n8n** | `npm update n8n` |

---

## Configuration

Settings can be customized in [.env](file:///home/intel/projects/front-end/n8n/.env):

- `N8N_PORT`: Port to listen on (default `5678`)
- `N8N_HOST`: Host address (default `localhost`)
- `WEBHOOK_URL`: Base URL for receiving webhooks (default `http://localhost:5678/`)
- `GENERIC_TIMEZONE`: Timezone for scheduled workflows (e.g., `Europe/London`)

Data (workflows, credentials, execution history) is saved in `~/.n8n/` by default.
