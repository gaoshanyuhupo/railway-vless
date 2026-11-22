# railway-vless

Minimal VLESS over WebSocket image for Railway free trial.

Railway terminates TLS at the edge and forwards plain HTTP to the container,
so this container only speaks `ws://0.0.0.0:$PORT/<WS_PATH>`; clients connect
with `wss://<railway-domain>/<WS_PATH>` and `security=tls`.

## Environment variables

| var | default | meaning |
|---|---|---|
| `UUID` | all-zero UUID | VLESS client id |
| `WS_PATH` | `/vless` | WebSocket path |
| `PORT` | `8080` | injected by Railway |

Deploy on Railway: New Project -> Deploy from GitHub repo -> set `UUID`.
