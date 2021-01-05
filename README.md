# simple-k8s-hdhomerun-record
A simple kubernetes deployment for the Silicon Dust HDHomerun RECORD engine.

This project works well for a simple deployment, such as a DIY homelab setup, where you'd like to run the hdhomerun record engine on a kubernetes cluster. This deploys the [HDHomeRun RECORD Engine](https://info.hdhomerun.com/info/dvr:linux) that allows for recording from a Silicon Dust network tuner, which attaches to the [Silicon Dust HDHomeRun DVR Service](https://www.silicondust.com/dvr-service/).  By running this engine in a container, it offers better isolation from it's host. And by running it on kubernetes, it provides a declartative deployment and rohbustness features, such as liveness probes.

To build the hdhomerun record engine container image, simply run:
```
./build.sh
```

Then, to run this deployment on the kubernetes cluster, simply:
```
kubectl apply -f hdhomerun-record.yaml
```
**Note**, The hdhomerun record engine currently assumes it's recordings are kept on the ```/mnt/disks/recordings/HDHomeRun``` host directory.

Once the hdhomerun-record engine pod is ready on the cluster, you can test that it's visible through the following [link](http://my.hdhomerun.com).  If running normally, you should find:
```
HDHomeRun RECORD
  Version 20200907
```
