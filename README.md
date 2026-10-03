Completed devops-demo from [4.5 Cloud Native Application - Remote Containerization](https://github.com/su-ntu-sctp/ai-4.5-cloud-native-application-remote-containerization/blob/main/lesson.md)


### Docker Desktop - Local
![Docker Desktop - local](./assets/images/docker%20-%20local.jpg)

### Docker Hub - Images
![Docker Deaktop - My Hub](./assets/images/docker%20-%20remote.jpg)


### Multi-platform builds

Use `docker buildx build` for explicit BuildKit features: multi-platform builds, remote builders, advanced cache options, and output directly to a registry. 

Common Docker target platforms include `linux/amd64`, `linux/arm64`, `linux/arm/v7`, `linux/ppc64le`, `linux/s390x`, and `linux/riscv64`. Windows containers also have targets such as `windows/amd64`, but require Windows-compatible base images.

```bash
docker buildx build --platform linux/amd64,linux/arm64 -t ensanguine/devops-demo:latest --push .
```