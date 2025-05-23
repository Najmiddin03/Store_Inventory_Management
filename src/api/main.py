from fastapi import FastAPI
from fastapi.middleware.cors import CORSMiddleware

from src.api.categories import router as category_router
from src.api.subcategories import router as subcategory_router
from src.api.products import router as product_router
from src.api.batches import router as batches_router
from src.api.sale import router as sale_router

app = FastAPI()

app.include_router(category_router)
app.include_router(subcategory_router)
app.include_router(product_router)
app.include_router(batches_router)
app.include_router(sale_router)

app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"],  # You can replace "*" with specific domains like ["http://localhost:3000"]
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"]
)


@app.get("/")
async def root():
    return {"World"}



