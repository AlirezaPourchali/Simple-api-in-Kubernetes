from fastapi import FastAPI ,Request

app = FastAPI()

@app.get('/status')
async def main(request: Request ): 
    return {'status':'OK'}

