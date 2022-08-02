# https://kubernetes.io/zh/docs/concepts/workloads/controllers/deployment/
# https://github.com/KusionStack/kusion-in-action-book/tree/main/examples/ch1.3

import myapp as apps

demo = apps.Deployment {
    metadata.name = "nginx-deployment"
    spec = {
        replicas = 3
        selector.matchLabels = {
            "app" = "nginx"
        }
        template.spec.containers = [
            {
                name = "nginx"
                image = "nginx:1.14.2"
                ports = [
                    {containerPort = 80}
                ]
            }
        ]
    }
}
