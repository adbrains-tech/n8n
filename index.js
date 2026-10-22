// Hostinger Node.js Application Entry Point for n8n

// Map Hostinger's assigned PORT to N8N_PORT
if (process.env.PORT && !process.env.N8N_PORT) {
  process.env.N8N_PORT = process.env.PORT;
}

// Ensure default command is "start"
if (process.argv.length <= 2) {
  process.argv.push('start');
}

// Delegate execution to n8n CLI
require('n8n/bin/n8n');
