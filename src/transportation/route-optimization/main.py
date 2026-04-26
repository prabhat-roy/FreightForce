import os
from datetime import datetime, timezone
from fastapi import FastAPI

app = FastAPI(title="route-optimization", version="0.1.0",
              description="VRP solver using Google OR-Tools")


@app.get("/healthz")
def health() -> dict:
    return {
        "status": "ok",
        "service": "route-optimization",
        "checked_at": datetime.now(timezone.utc).isoformat(),
    }


if __name__ == "__main__":
    import uvicorn

    port = int(os.environ.get("PORT", "50102"))
    uvicorn.run(app, host="0.0.0.0", port=port)
