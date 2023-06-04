<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>emrcontainers_list_managed_endpoints</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists managed endpoints based on a set of parameters

### Description

Lists managed endpoints based on a set of parameters. A managed endpoint
is a gateway that connects Amazon EMR Studio to Amazon EMR on EKS so
that Amazon EMR Studio can communicate with your virtual cluster.

### Usage

    emrcontainers_list_managed_endpoints(virtualClusterId, createdBefore,
      createdAfter, types, states, maxResults, nextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="emrcontainers_list_managed_endpoints_:_virtualClusterId">virtualClusterId</code></td>
<td><p>[required] The ID of the virtual cluster.</p></td>
</tr>
<tr class="even">
<td><code
id="emrcontainers_list_managed_endpoints_:_createdBefore">createdBefore</code></td>
<td><p>The date and time before which the endpoints are
created.</p></td>
</tr>
<tr class="odd">
<td><code
id="emrcontainers_list_managed_endpoints_:_createdAfter">createdAfter</code></td>
<td><p>The date and time after which the endpoints are created.</p></td>
</tr>
<tr class="even">
<td><code
id="emrcontainers_list_managed_endpoints_:_types">types</code></td>
<td><p>The types of the managed endpoints.</p></td>
</tr>
<tr class="odd">
<td><code
id="emrcontainers_list_managed_endpoints_:_states">states</code></td>
<td><p>The states of the managed endpoints.</p></td>
</tr>
<tr class="even">
<td><code
id="emrcontainers_list_managed_endpoints_:_maxResults">maxResults</code></td>
<td><p>The maximum number of managed endpoints that can be
listed.</p></td>
</tr>
<tr class="odd">
<td><code
id="emrcontainers_list_managed_endpoints_:_nextToken">nextToken</code></td>
<td><p>The token for the next set of managed endpoints to
return.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      endpoints = list(
        list(
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
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_managed_endpoints(
      virtualClusterId = "string",
      createdBefore = as.POSIXct(
        "2015-01-01"
      ),
      createdAfter = as.POSIXct(
        "2015-01-01"
      ),
      types = list(
        "string"
      ),
      states = list(
        "CREATING"|"ACTIVE"|"TERMINATING"|"TERMINATED"|"TERMINATED_WITH_ERRORS"
      ),
      maxResults = 123,
      nextToken = "string"
    )
