<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lightsail_create_container_service_deployment</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a deployment for your Amazon Lightsail container service

### Description

Creates a deployment for your Amazon Lightsail container service.

A deployment specifies the containers that will be launched on the
container service and their settings, such as the ports to open, the
environment variables to apply, and the launch command to run. It also
specifies the container that will serve as the public endpoint of the
deployment and its settings, such as the HTTP or HTTPS port to use, and
the health check configuration.

You can deploy containers to your container service using container
images from a public registry such as Amazon ECR Public, or from your
local machine. For more information, see Creating container images for
your Amazon Lightsail container services in the *Amazon Lightsail
Developer Guide*.

### Usage

    lightsail_create_container_service_deployment(serviceName, containers,
      publicEndpoint)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lightsail_create_container_service_deployment_:_serviceName">serviceName</code></td>
<td><p>[required] The name of the container service for which to create
the deployment.</p></td>
</tr>
<tr class="even">
<td><code
id="lightsail_create_container_service_deployment_:_containers">containers</code></td>
<td><p>An object that describes the settings of the containers that will
be launched on the container service.</p></td>
</tr>
<tr class="odd">
<td><code
id="lightsail_create_container_service_deployment_:_publicEndpoint">publicEndpoint</code></td>
<td><p>An object that describes the settings of the public endpoint for
the container service.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      containerService = list(
        containerServiceName = "string",
        arn = "string",
        createdAt = as.POSIXct(
          "2015-01-01"
        ),
        location = list(
          availabilityZone = "string",
          regionName = "us-east-1"|"us-east-2"|"us-west-1"|"us-west-2"|"eu-west-1"|"eu-west-2"|"eu-west-3"|"eu-central-1"|"ca-central-1"|"ap-south-1"|"ap-southeast-1"|"ap-southeast-2"|"ap-northeast-1"|"ap-northeast-2"|"eu-north-1"
        ),
        resourceType = "ContainerService"|"Instance"|"StaticIp"|"KeyPair"|"InstanceSnapshot"|"Domain"|"PeeredVpc"|"LoadBalancer"|"LoadBalancerTlsCertificate"|"Disk"|"DiskSnapshot"|"RelationalDatabase"|"RelationalDatabaseSnapshot"|"ExportSnapshotRecord"|"CloudFormationStackRecord"|"Alarm"|"ContactMethod"|"Distribution"|"Certificate"|"Bucket",
        tags = list(
          list(
            key = "string",
            value = "string"
          )
        ),
        power = "nano"|"micro"|"small"|"medium"|"large"|"xlarge",
        powerId = "string",
        state = "PENDING"|"READY"|"RUNNING"|"UPDATING"|"DELETING"|"DISABLED"|"DEPLOYING",
        stateDetail = list(
          code = "CREATING_SYSTEM_RESOURCES"|"CREATING_NETWORK_INFRASTRUCTURE"|"PROVISIONING_CERTIFICATE"|"PROVISIONING_SERVICE"|"CREATING_DEPLOYMENT"|"EVALUATING_HEALTH_CHECK"|"ACTIVATING_DEPLOYMENT"|"CERTIFICATE_LIMIT_EXCEEDED"|"UNKNOWN_ERROR",
          message = "string"
        ),
        scale = 123,
        currentDeployment = list(
          version = 123,
          state = "ACTIVATING"|"ACTIVE"|"INACTIVE"|"FAILED",
          containers = list(
            list(
              image = "string",
              command = list(
                "string"
              ),
              environment = list(
                "string"
              ),
              ports = list(
                "HTTP"|"HTTPS"|"TCP"|"UDP"
              )
            )
          ),
          publicEndpoint = list(
            containerName = "string",
            containerPort = 123,
            healthCheck = list(
              healthyThreshold = 123,
              unhealthyThreshold = 123,
              timeoutSeconds = 123,
              intervalSeconds = 123,
              path = "string",
              successCodes = "string"
            )
          ),
          createdAt = as.POSIXct(
            "2015-01-01"
          )
        ),
        nextDeployment = list(
          version = 123,
          state = "ACTIVATING"|"ACTIVE"|"INACTIVE"|"FAILED",
          containers = list(
            list(
              image = "string",
              command = list(
                "string"
              ),
              environment = list(
                "string"
              ),
              ports = list(
                "HTTP"|"HTTPS"|"TCP"|"UDP"
              )
            )
          ),
          publicEndpoint = list(
            containerName = "string",
            containerPort = 123,
            healthCheck = list(
              healthyThreshold = 123,
              unhealthyThreshold = 123,
              timeoutSeconds = 123,
              intervalSeconds = 123,
              path = "string",
              successCodes = "string"
            )
          ),
          createdAt = as.POSIXct(
            "2015-01-01"
          )
        ),
        isDisabled = TRUE|FALSE,
        principalArn = "string",
        privateDomainName = "string",
        publicDomainNames = list(
          list(
            "string"
          )
        ),
        url = "string",
        privateRegistryAccess = list(
          ecrImagePullerRole = list(
            isActive = TRUE|FALSE,
            principalArn = "string"
          )
        )
      )
    )

### Request syntax

    svc$create_container_service_deployment(
      serviceName = "string",
      containers = list(
        list(
          image = "string",
          command = list(
            "string"
          ),
          environment = list(
            "string"
          ),
          ports = list(
            "HTTP"|"HTTPS"|"TCP"|"UDP"
          )
        )
      ),
      publicEndpoint = list(
        containerName = "string",
        containerPort = 123,
        healthCheck = list(
          healthyThreshold = 123,
          unhealthyThreshold = 123,
          timeoutSeconds = 123,
          intervalSeconds = 123,
          path = "string",
          successCodes = "string"
        )
      )
    )
