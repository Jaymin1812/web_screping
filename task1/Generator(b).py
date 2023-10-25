# Generators and Coroutines: implement a generator function and explain how it's different from a regular function. 
# also expalin the concept of coroutines and create a simple asynchronous generator.

print(f"""
      ==============================================
                 Using the generator
      ==============================================""")

def simple_generator(n):
    for i in range(1, n + 1):
        yield i

# Using the generator
gen = simple_generator(5)
for number in gen:
    print(f"Generator: {number}")

print(f"""
      ==============================================
                 Using the Coroutine
      ==============================================""")

import asyncio

async def simple_coroutine(n):
    for i in range(1, n + 1):
        await asyncio.sleep(1)  # Simulate an asynchronous operation
        yield i

async def main():
    async for number in simple_coroutine(5):
        print(f"Coroutine: {number}")

asyncio.run(main())


