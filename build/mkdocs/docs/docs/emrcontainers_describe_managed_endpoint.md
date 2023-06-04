<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>emrcontainers_describe_managed_endpoint</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Displays detailed information about a managed endpoint

### Description

Displays detailed information about a managed endpoint. A managed
endpoint is a gateway that connects Amazon EMR Studio to Amazon EMR on
EKS so that Amazon EMR Studio can communicate with your virtual cluster.

### Usage

    emrcontainers_describe_managed_endpoint(id, virtualClusterId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="emrcontainers_describe_managed_endpoint_:_id">id</code></td>
<td><p>[required] This output displays ID of the managed
endpoint.</p></td>
</tr>
<tr class="even">
<td><code
id="emrcontainers_describe_managed_endpoint_:_virtualClusterId">virtualClusterId</code></td>
<td><p>[required] The ID of the endpoint's virtual cluster.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      endpoint = list(
        id = "string",
        name = "string",
        arn = "string",
        virtualClusterId = "string",
        type = "string",
        state = "CREATING"|"ACTIVE"|"TERMINATING"|"TERMINATED"|"TERMINATED_WITH_ERRORS",
        releaseLabel = "string",
        executionRoleArn = "string",
        certificateArn = "string",
        certificateAuthority = list(
          certificateArn = "string",
          certificateData = "string"
        ),
        configurationOverrides = list(
          applicationConfiguration = list(
            list(
              classification = "string",
              properties = list(
                "string"
              ),
              configurations = list()
            )
          ),
          monitoringConfiguration = list(
            persistentAppUI = "ENABLED"|"DISABLED",
            cloudWatchMonitoringConfiguration = list(
              logGroupName = "string",
              logStreamNamePrefix = "string"
            ),
            s3MonitoringConfiguration = list(
              logUri = "string"
            )
          )
        ),
        serverUrl = "string",
        createdAt = as.POSIXct(
          "2015-01-01"
        ),
        securityGroup = "string",
        subnetIds = list(
          "string"
        ),
        stateDetails = "string",
        failureReason = "INTERNAL_ERROR"|"USER_ERROR"|"VALIDATION_ERROR"|"CLUSTER_UNAVAILABLE",
        tags = list(
          "string"
        )
      )
    )

### Request syntax

    svc$describe_managed_endpoint(
      id = "string",
      virtualClusterId = "string"
    )
