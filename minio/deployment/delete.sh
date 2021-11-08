kubectl ns minio-dms
kubectl delete tenant minio-dms-1
kubectl delete pvc data{0..1}-minio-dms-1-pool-0-{0..3}
kubectl delete -f local-pv.yaml
ssh pawel@node-4 "rm -rfv /data/vol{1..4}/{*,.*}" 
ssh pawel@node-3 "rm -rfv /data/vol{1..4}/{*,.*}" 
ssh pawel@node-2 "rm -rfv /data/vol{1..4}/{*,.*}" 
ssh pawel@kube-master-2 "rm -rfv /data/vol{1..4}/{*,.*}"