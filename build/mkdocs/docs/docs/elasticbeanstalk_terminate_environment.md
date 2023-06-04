<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elasticbeanstalk_terminate_environment</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Terminates the specified environment

### Description

Terminates the specified environment.

### Usage

    elasticbeanstalk_terminate_environment(EnvironmentId, EnvironmentName,
      TerminateResources, ForceTerminate)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elasticbeanstalk_terminate_environment_:_EnvironmentId">EnvironmentId</code></td>
<td><p>The ID of the environment to terminate.</p>
<p>Condition: You must specify either this or an EnvironmentName, or
both. If you do not specify either, AWS Elastic Beanstalk returns
<code>MissingRequiredParameter</code> error.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticbeanstalk_terminate_environment_:_EnvironmentName">EnvironmentName</code></td>
<td><p>The name of the environment to terminate.</p>
<p>Condition: You must specify either this or an EnvironmentId, or both.
If you do not specify either, AWS Elastic Beanstalk returns
<code>MissingRequiredParameter</code> error.</p></td>
</tr>
<tr class="odd">
<td><code
id="elasticbeanstalk_terminate_environment_:_TerminateResources">TerminateResources</code></td>
<td><p>Indicates whether the associated AWS resources should shut down
when the environment is terminated:</p>
<ul>
<li><p><code>true</code>: The specified environment as well as the
associated AWS resources, such as Auto Scaling group and LoadBalancer,
are terminated.</p></li>
<li><p><code>false</code>: AWS Elastic Beanstalk resource management is
removed from the environment, but the AWS resources continue to
operate.</p></li>
</ul>
<p>For more information, see the <a
href="https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/">AWS
Elastic Beanstalk User Guide.</a></p>
<p>Default: <code>true</code></p>
<p>Valid Values: <code>true</code> | <code>false</code></p></td>
</tr>
<tr class="even">
<td><code
id="elasticbeanstalk_terminate_environment_:_ForceTerminate">ForceTerminate</code></td>
<td><p>Terminates the target environment even if another environment in
the same group is dependent on it.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      EnvironmentName = "string",
      EnvironmentId = "string",
      ApplicationName = "string",
      VersionLabel = "string",
      SolutionStackName = "string",
      PlatformArn = "string",
      TemplateName = "string",
      Description = "string",
      EndpointURL = "string",
      CNAME = "string",
      DateCreated = as.POSIXct(
        "2015-01-01"
      ),
      DateUpdated = as.POSIXct(
        "2015-01-01"
      ),
      Status = "Aborting"|"Launching"|"Updating"|"LinkingFrom"|"LinkingTo"|"Ready"|"Terminating"|"Terminated",
      AbortableOperationInProgress = TRUE|FALSE,
      Health = "Green"|"Yellow"|"Red"|"Grey",
      HealthStatus = "NoData"|"Unknown"|"Pending"|"Ok"|"Info"|"Warning"|"Degraded"|"Severe"|"Suspended",
      Resources = list(
        LoadBalancer = list(
          LoadBalancerName = "string",
          Domain = "string",
          Listeners = list(
            list(
              Protocol = "string",
              Port = 123
            )
          )
        )
      ),
      Tier = list(
        Name = "string",
        Type = "string",
        Version = "string"
      ),
      EnvironmentLinks = list(
        list(
          LinkName = "string",
          EnvironmentName = "string"
        )
      ),
      EnvironmentArn = "string",
      OperationsRole = "string"
    )

### Request syntax

    svc$terminate_environment(
      EnvironmentId = "string",
      EnvironmentName = "string",
      TerminateResources = TRUE|FALSE,
      ForceTerminate = TRUE|FALSE
    )

### Examples

    ## Not run: 
    # The following operation terminates an Elastic Beanstalk environment
    # named my-env:
    svc$terminate_environment(
      EnvironmentName = "my-env"
    )

    ## End(Not run)
