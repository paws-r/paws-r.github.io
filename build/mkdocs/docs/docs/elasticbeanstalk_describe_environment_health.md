<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elasticbeanstalk_describe_environment_health</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about the overall health of the specified environment

### Description

Returns information about the overall health of the specified
environment. The **DescribeEnvironmentHealth** operation is only
available with AWS Elastic Beanstalk Enhanced Health.

### Usage

    elasticbeanstalk_describe_environment_health(EnvironmentName,
      EnvironmentId, AttributeNames)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elasticbeanstalk_describe_environment_health_:_EnvironmentName">EnvironmentName</code></td>
<td><p>Specify the environment by name.</p>
<p>You must specify either this or an EnvironmentName, or both.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticbeanstalk_describe_environment_health_:_EnvironmentId">EnvironmentId</code></td>
<td><p>Specify the environment by ID.</p>
<p>You must specify either this or an EnvironmentName, or both.</p></td>
</tr>
<tr class="odd">
<td><code
id="elasticbeanstalk_describe_environment_health_:_AttributeNames">AttributeNames</code></td>
<td><p>Specify the response elements to return. To retrieve all
attributes, set to <code>All</code>. If no attribute names are
specified, returns the name of the environment.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      EnvironmentName = "string",
      HealthStatus = "string",
      Status = "Green"|"Yellow"|"Red"|"Grey",
      Color = "string",
      Causes = list(
        "string"
      ),
      ApplicationMetrics = list(
        Duration = 123,
        RequestCount = 123,
        StatusCodes = list(
          Status2xx = 123,
          Status3xx = 123,
          Status4xx = 123,
          Status5xx = 123
        ),
        Latency = list(
          P999 = 123.0,
          P99 = 123.0,
          P95 = 123.0,
          P90 = 123.0,
          P85 = 123.0,
          P75 = 123.0,
          P50 = 123.0,
          P10 = 123.0
        )
      ),
      InstancesHealth = list(
        NoData = 123,
        Unknown = 123,
        Pending = 123,
        Ok = 123,
        Info = 123,
        Warning = 123,
        Degraded = 123,
        Severe = 123
      ),
      RefreshedAt = as.POSIXct(
        "2015-01-01"
      )
    )

### Request syntax

    svc$describe_environment_health(
      EnvironmentName = "string",
      EnvironmentId = "string",
      AttributeNames = list(
        "Status"|"Color"|"Causes"|"ApplicationMetrics"|"InstancesHealth"|"All"|"HealthStatus"|"RefreshedAt"
      )
    )

### Examples

    ## Not run: 
    # The following operation retrieves overall health information for an
    # environment named my-env:
    svc$describe_environment_health(
      AttributeNames = list(
        "All"
      ),
      EnvironmentName = "my-env"
    )

    ## End(Not run)
