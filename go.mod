module github.com/projectcalico/app-policy

go 1.17

require (
	github.com/docopt/docopt-go v0.0.0-20180111231733-ee0de3bc6815
	github.com/envoyproxy/data-plane-api v0.0.0-20210121155913-ffd420ef8a9a
	github.com/gogo/googleapis v1.2.0
	github.com/gogo/protobuf v1.3.2
	github.com/onsi/gomega v1.10.1
	github.com/projectcalico/libcalico-go v1.7.2-0.20211119233600-e3f7c620522a
	github.com/sirupsen/logrus v1.4.2
	golang.org/x/net v0.0.0-20201110031124-69a78807bb2b
	google.golang.org/grpc v1.27.0
)

require (
	github.com/envoyproxy/protoc-gen-validate v0.4.1 // indirect
	github.com/golang/protobuf v1.4.3 // indirect
	github.com/google/gofuzz v1.0.0 // indirect
	github.com/kelseyhightower/envconfig v1.4.0 // indirect
	github.com/konsorten/go-windows-terminal-sequences v1.0.2 // indirect
	github.com/prometheus/client_golang v1.1.0 // indirect
	golang.org/x/sys v0.0.0-20200930185726-fdedc70b468f // indirect
	golang.org/x/text v0.3.3 // indirect
	golang.org/x/xerrors v0.0.0-20200804184101-5ec99f83aff1 // indirect
	google.golang.org/genproto v0.0.0-20200526211855-cb27e3aa2013 // indirect
	google.golang.org/protobuf v1.25.0 // indirect
	gopkg.in/inf.v0 v0.9.1 // indirect
	gopkg.in/yaml.v2 v2.3.0 // indirect
	k8s.io/klog/v2 v2.90.1 // indirect
	sigs.k8s.io/structured-merge-diff/v4 v4.2.3 // indirect
)

// Replace the envoy data-plane-api dependency with the projectcalico fork that includes the generated
// go bindings for the API. Upstream only includes the protobuf definitions, so we need to fork in order to
// supply the go code.
replace github.com/envoyproxy/data-plane-api => github.com/projectcalico/data-plane-api v0.0.0-20210121211707-a620ff3c8f7e

replace github.com/projectcalico/libcalico-go => ../libcalico-go
