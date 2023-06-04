<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lightsail_update_container_service</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the configuration of your Amazon Lightsail container service, such as its power, scale, and public domain names

### Description

Updates the configuration of your Amazon Lightsail container service,
such as its power, scale, and public domain names.

### Usage

    lightsail_update_container_service(serviceName, power, scale,
      isDisabled, publicDomainNames, privateRegistryAccess)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lightsail_update_container_service_:_serviceName">serviceName</code></td>
<td><p>[required] The name of the container service to update.</p></td>
</tr>
<tr class="even">
<td><code
id="lightsail_update_container_service_:_power">power</code></td>
<td><p>The power for the container service.</p>
<p>The power specifies the amount of memory, vCPUs, and base monthly
cost of each node of the container service. The <code>power</code> and
<code>scale</code> of a container service makes up its configured
capacity. To determine the monthly price of your container service,
multiply the base price of the <code>power</code> with the
<code>scale</code> (the number of nodes) of the service.</p>
<p>Use the <code>get_container_service_powers</code> action to view the
specifications of each power option.</p></td>
</tr>
<tr class="odd">
<td><code
id="lightsail_update_container_service_:_scale">scale</code></td>
<td><p>The scale for the container service.</p>
<p>The scale specifies the allocated compute nodes of the container
service. The <code>power</code> and <code>scale</code> of a container
service makes up its configured capacity. To determine the monthly price
of your container service, multiply the base price of the
<code>power</code> with the <code>scale</code> (the number of nodes) of
the service.</p></td>
</tr>
<tr class="even">
<td><code
id="lightsail_update_container_service_:_isDisabled">isDisabled</code></td>
<td><p>A Boolean value to indicate whether the container service is
disabled.</p></td>
</tr>
<tr class="odd">
<td><code
id="lightsail_update_container_service_:_publicDomainNames">publicDomainNames</code></td>
<td><p>The public domain names to use with the container service, such
as <code>example.com</code> and <code>www.example.com</code>.</p>
<p>You can specify up to four public domain names for a container
service. The domain names that you specify are used when you create a
deployment with a container configured as the public endpoint of your
container service.</p>
<p>If you don't specify public domain names, then you can use the
default domain of the container service.</p>
<p>You must create and validate an SSL/TLS certificate before you can
use public domain names with your container service. Use the
<code>create_certificate</code> action to create a certificate for the
public domain names you want to use with your container service.</p>
<p>You can specify public domain names using a string to array map as
shown in the example later on this page.</p></td>
</tr>
<tr class="even">
<td><code
id="lightsail_update_container_service_:_privateRegistryAccess">privateRegistryAccess</code></td>
<td><p>An object to describe the configuration for the container service
to access private container image repositories, such as Amazon Elastic
Container Registry (Amazon ECR) private repositories.</p>
<p>For more information, see Configuring access to an Amazon ECR private
repository for an Amazon Lightsail container service in the <em>Amazon
Lightsail Developer Guide</em>.</p></td>
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

    svc$update_container_service(
      serviceName = "string",
      power = "nano"|"micro"|"small"|"medium"|"large"|"xlarge",
      scale = 123,
      isDisabled = TRUE|FALSE,
      publicDomainNames = list(
        list(
          "string"
        )
      ),
      privateRegistryAccess = list(
        ecrImagePullerRole = list(
          isActive = TRUE|FALSE
        )
      )
    )
