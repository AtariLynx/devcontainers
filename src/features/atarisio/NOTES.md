# About AtariSIO

AtariSIO is a Linux kernel driver and tools to interface with Atari 8-bit SIO protocol.  
This feature is installed from the sources located at https://github.com/HiassofT/AtariSIO.git.

The `cc65` base image allows
```json
{
	"name": "cc65",
	"image": "ghcr.io/atarilynx/devcontainers/cc65:latest",
    // ...
}
```

Alteratively, you can combine this with the `cc65` feature to build Atari 400 and 800 binaries that use the SIO protocol.

```json
"features": {
    "ghcr.io/atarilynx/features/cc65:1": { }
}
```

Alternatively, you can 