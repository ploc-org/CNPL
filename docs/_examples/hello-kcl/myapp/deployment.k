# pkg: deployment

schema Deployment:
    apiVersion: str = "apps/v1"
    kind: str = "Deployment"

    metadata?: ObjectMeta
    spec?: DeploymentSpec

# -------------------------------------

schema ObjectMeta:
    name?: str
    namespace?: str

schema DeploymentSpec:
    replicas?: int
    selector: LabelSelector
    template: PodTemplateSpec

# -------------------------------------

schema LabelSelector:
    matchLabels?: {str:str}

schema PodTemplateSpec:
    metadata?: ObjectMeta
    spec?: PodSpec

# -------------------------------------

schema PodSpec:
    containers: [Container]

schema Container:
    image?: str
    name: str
    ports?: [ContainerPort]

schema ContainerPort:
    containerPort: int

