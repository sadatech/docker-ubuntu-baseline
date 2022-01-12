cls
docker rm -f Ubuntu-Baseline
docker rmi -f sadaindonesia/ubuntu-baseline:focal
docker build --pull --rm -f ".\Dockerfile" -t sadaindonesia/ubuntu-baseline:focal "."
docker run -d -it --name Ubuntu-Baseline -v /sys/fs/cgroup:/sys/fs/cgroup:ro --privileged sadaindonesia/ubuntu-baseline:focal
pause