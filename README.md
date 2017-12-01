# mapcrafter
Docker container to run Mapcrafter https://mapcrafter.org

# Usage
```bash
docker run -d -v /path/to/output:/output -v /path/to/config:/config -v /path/to/world:/world:ro --name mapcrafter skaronator/mapcrafter
```
# Environment Variable
## THREADS
By default we will use 4 threads. Increase the number to speed up the render process. **Do not use a higher number than your CPU actually has!**

## RUN_EVERY_SEC
By default mapcrafter will run every 600 seconds **after** the last run finished.


# Volumes
There a three volumes:

## /world
The Minecraft "world" folder is expected here.

## /config
If a special config is needed it can be delivered here. If there is no `render.conf` present a simple one is genereted at first start.

## /output
The generated output is put here.
