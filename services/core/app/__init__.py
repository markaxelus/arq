from fastapi import FastAPI

app = FastAPI(title="Arc Core Api")

@app.get("/health")
def health():
  return {"ok": True}
