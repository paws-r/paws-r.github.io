<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lightsail_get_container_service_deployments</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the deployments for your Amazon Lightsail container service

### Description

Returns the deployments for your Amazon Lightsail container service

A deployment specifies the settings, such as the ports and launch
command, of containers that are deployed to your container service.

The deployments are ordered by version in ascending order. The newest
version is listed at the top of the response.

A set number of deployments are kept before the oldest one is replaced
with the newest one. For more information, see [Amazon Lightsail
endpoints and
quotas](https://docs.aws.amazon.com/general/latest/gr/lightsail.html) in
the *Amazon Web Services General Reference*.

### Usage

    lightsail_get_container_service_deployments(serviceName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lightsail_get_container_service_deployments_:_serviceName">serviceName</code></td>
<td><p>[required] The name of the container service for which to return
deployments.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      deployments = list(
        list(
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
        )
      )
    )

### Request syntax

    svc$get_container_service_deployments(
      serviceName = "string"
    )
