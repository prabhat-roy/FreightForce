import os
from datetime import datetime, timezone
from fastapi import FastAPI

app = FastAPI(title="eta-service", version="0.1.0",
              description="ML ETA prediction (traffic + weather + history)")


@app.get("/healthz")
def health() -> dict:
    return {
        "status": "ok",
        "service": "eta-service",
        "checked_at": datetime.now(timezone.utc).isoformat(),
    }


if __name__ == "__main__":
    import uvicorn

    port = int(os.environ.get("PORT", "50143"))
    uvicorn.run(app, host="0.0.0.0", port=port)
