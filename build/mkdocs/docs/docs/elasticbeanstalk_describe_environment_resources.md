<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elasticbeanstalk_describe_environment_resources</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns AWS resources for this environment

### Description

Returns AWS resources for this environment.

### Usage

    elasticbeanstalk_describe_environment_resources(EnvironmentId,
      EnvironmentName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elasticbeanstalk_describe_environment_resources_:_EnvironmentId">EnvironmentId</code></td>
<td><p>The ID of the environment to retrieve AWS resource usage
data.</p>
<p>Condition: You must specify either this or an EnvironmentName, or
both. If you do not specify either, AWS Elastic Beanstalk returns
<code>MissingRequiredParameter</code> error.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticbeanstalk_describe_environment_resources_:_EnvironmentName">EnvironmentName</code></td>
<td><p>The name of the environment to retrieve AWS resource usage
data.</p>
<p>Condition: You must specify either this or an EnvironmentId, or both.
If you do not specify either, AWS Elastic Beanstalk returns
<code>MissingRequiredParameter</code> error.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      EnvironmentResources = list(
        EnvironmentName = "string",
        AutoScalingGroups = list(
          list(
            Name = "string"
          )
        ),
        Instances = list(
          list(
            Id = "string"
          )
        ),
        LaunchConfigurations = list(
          list(
            Name = "string"
          )
        ),
        LaunchTemplates = list(
          list(
            Id = "string"
          )
        ),
        LoadBalancers = list(
          list(
            Name = "string"
          )
        ),
        Triggers = list(
          list(
            Name = "string"
          )
        ),
        Queues = list(
          list(
            Name = "string",
            URL = "string"
          )
        )
      )
    )

### Request syntax

    svc$describe_environment_resources(
      EnvironmentId = "string",
      EnvironmentName = "string"
    )

### Examples

    ## Not run: 
    # The following operation retrieves information about resources in an
    # environment named my-env:
    svc$describe_environment_resources(
      EnvironmentName = "my-env"
    )

    ## End(Not run)
