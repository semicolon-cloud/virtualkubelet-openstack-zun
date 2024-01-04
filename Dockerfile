FROM golang:1.19
WORKDIR /app
COPY . ./
RUN make build

CMD ["/app/bin/virtual-kubelet --provider openstack --kubeconfig /data/kubeconfig --disable-taint true"]
