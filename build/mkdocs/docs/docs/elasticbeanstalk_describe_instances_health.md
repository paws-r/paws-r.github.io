<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elasticbeanstalk_describe_instances_health</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves detailed information about the health of instances in your AWS Elastic Beanstalk

### Description

Retrieves detailed information about the health of instances in your AWS
Elastic Beanstalk. This operation requires [enhanced health
reporting](https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/health-enhanced.html).

### Usage

    elasticbeanstalk_describe_instances_health(EnvironmentName,
      EnvironmentId, AttributeNames, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elasticbeanstalk_describe_instances_health_:_EnvironmentName">EnvironmentName</code></td>
<td><p>Specify the AWS Elastic Beanstalk environment by name.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticbeanstalk_describe_instances_health_:_EnvironmentId">EnvironmentId</code></td>
<td><p>Specify the AWS Elastic Beanstalk environment by ID.</p></td>
</tr>
<tr class="odd">
<td><code
id="elasticbeanstalk_describe_instances_health_:_AttributeNames">AttributeNames</code></td>
<td><p>Specifies the response elements you wish to receive. To retrieve
all attributes, set to <code>All</code>. If no attribute names are
specified, returns a list of instances.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticbeanstalk_describe_instances_health_:_NextToken">NextToken</code></td>
<td><p>Specify the pagination token returned by a previous
call.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      InstanceHealthList = list(
        list(
          InstanceId = "string",
          HealthStatus = "string",
          Color = "string",
          Causes = list(
            "string"
          ),
          LaunchedAt = as.POSIXct(
            "2015-01-01"
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
          System = list(
            CPUUtilization = list(
              User = 123.0,
              Nice = 123.0,
              System = 123.0,
              Idle = 123.0,
              IOWait = 123.0,
              IRQ = 123.0,
              SoftIRQ = 123.0,
              Privileged = 123.0
            ),
            LoadAverage = list(
              123.0
            )
          ),
          Deployment = list(
            VersionLabel = "string",
            DeploymentId = 123,
            Status = "string",
            DeploymentTime = as.POSIXct(
              "2015-01-01"
            )
          ),
          AvailabilityZone = "string",
          InstanceType = "string"
        )
      ),
      RefreshedAt = as.POSIXct(
        "2015-01-01"
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_instances_health(
      EnvironmentName = "string",
      EnvironmentId = "string",
      AttributeNames = list(
        "HealthStatus"|"Color"|"Causes"|"ApplicationMetrics"|"RefreshedAt"|"LaunchedAt"|"System"|"Deployment"|"AvailabilityZone"|"InstanceType"|"All"
      ),
      NextToken = "string"
    )

### Examples

    ## Not run: 
    # The following operation retrieves health information for instances in an
    # environment named my-env:
    svc$describe_instances_health(
      AttributeNames = list(
        "All"
      ),
      EnvironmentName = "my-env"
    )

    ## End(Not run)
