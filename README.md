# debug-tool 映像檔

可用來測試容器間的問題，有助於狀況排除，例如：ping、curl、rsync、showmount 等等...

## 使用方式

#### K8s
```
# Example

kubectl run debug-tool --generator=run-pod/v1 -it --rm --image=winds6206/debug-tool:3.10 --command ping 8.8.8.8
kubectl run debug-tool --generator=run-pod/v1 -it --rm --image=winds6206/debug-tool:3.10 --command curl http://ifconfig.io/
```

#### Docker
```
# Example

docker run -it --rm winds6206/debug-tool:3.10 ping 8.8.8.8
docker run -it --rm winds6206/debug-tool:3.10 curl http://ifconfig.io/
```

## 其他說明

調整環境變數 `TZ=Asia/Taipei` 可修正時區

```
apiVersion: apps/v1
kind: Deployment
metadata:
  ...
spec:
  ...
    spec:
      restartPolicy: Always
      containers:
      - name: debug-tool
        ...
        env:
          - name: TZ
            value: Asia/Taipei
```
