<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elasticbeanstalk_update_environment</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the environment description, deploys a new application version, updates the configuration settings to an entirely new configuration template, or updates select configuration option values in the running environment

### Description

Updates the environment description, deploys a new application version,
updates the configuration settings to an entirely new configuration
template, or updates select configuration option values in the running
environment.

Attempting to update both the release and configuration is not allowed
and AWS Elastic Beanstalk returns an `InvalidParameterCombination`
error.

When updating the configuration settings to a new template or individual
settings, a draft configuration is created and
`describe_configuration_settings` for this environment returns two
setting descriptions with different `DeploymentStatus` values.

### Usage

    elasticbeanstalk_update_environment(ApplicationName, EnvironmentId,
      EnvironmentName, GroupName, Description, Tier, VersionLabel,
      TemplateName, SolutionStackName, PlatformArn, OptionSettings,
      OptionsToRemove)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elasticbeanstalk_update_environment_:_ApplicationName">ApplicationName</code></td>
<td><p>The name of the application with which the environment is
associated.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticbeanstalk_update_environment_:_EnvironmentId">EnvironmentId</code></td>
<td><p>The ID of the environment to update.</p>
<p>If no environment with this ID exists, AWS Elastic Beanstalk returns
an <code>InvalidParameterValue</code> error.</p>
<p>Condition: You must specify either this or an EnvironmentName, or
both. If you do not specify either, AWS Elastic Beanstalk returns
<code>MissingRequiredParameter</code> error.</p></td>
</tr>
<tr class="odd">
<td><code
id="elasticbeanstalk_update_environment_:_EnvironmentName">EnvironmentName</code></td>
<td><p>The name of the environment to update. If no environment with
this name exists, AWS Elastic Beanstalk returns an
<code>InvalidParameterValue</code> error.</p>
<p>Condition: You must specify either this or an EnvironmentId, or both.
If you do not specify either, AWS Elastic Beanstalk returns
<code>MissingRequiredParameter</code> error.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticbeanstalk_update_environment_:_GroupName">GroupName</code></td>
<td><p>The name of the group to which the target environment belongs.
Specify a group name only if the environment's name is specified in an
environment manifest and not with the environment name or environment ID
parameters. See <a
href="https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/environment-cfg-manifest.html">Environment
Manifest (env.yaml)</a> for details.</p></td>
</tr>
<tr class="odd">
<td><code
id="elasticbeanstalk_update_environment_:_Description">Description</code></td>
<td><p>If this parameter is specified, AWS Elastic Beanstalk updates the
description of this environment.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticbeanstalk_update_environment_:_Tier">Tier</code></td>
<td><p>This specifies the tier to use to update the environment.</p>
<p>Condition: At this time, if you change the tier version, name, or
type, AWS Elastic Beanstalk returns <code>InvalidParameterValue</code>
error.</p></td>
</tr>
<tr class="odd">
<td><code
id="elasticbeanstalk_update_environment_:_VersionLabel">VersionLabel</code></td>
<td><p>If this parameter is specified, AWS Elastic Beanstalk deploys the
named application version to the environment. If no such application
version is found, returns an <code>InvalidParameterValue</code>
error.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticbeanstalk_update_environment_:_TemplateName">TemplateName</code></td>
<td><p>If this parameter is specified, AWS Elastic Beanstalk deploys
this configuration template to the environment. If no such configuration
template is found, AWS Elastic Beanstalk returns an
<code>InvalidParameterValue</code> error.</p></td>
</tr>
<tr class="odd">
<td><code
id="elasticbeanstalk_update_environment_:_SolutionStackName">SolutionStackName</code></td>
<td><p>This specifies the platform version that the environment will run
after the environment is updated.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticbeanstalk_update_environment_:_PlatformArn">PlatformArn</code></td>
<td><p>The ARN of the platform, if used.</p></td>
</tr>
<tr class="odd">
<td><code
id="elasticbeanstalk_update_environment_:_OptionSettings">OptionSettings</code></td>
<td><p>If specified, AWS Elastic Beanstalk updates the configuration set
associated with the running environment and sets the specified
configuration options to the requested value.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticbeanstalk_update_environment_:_OptionsToRemove">OptionsToRemove</code></td>
<td><p>A list of custom user-defined configuration options to remove
from the configuration set for this environment.</p></td>
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

    svc$update_environment(
      ApplicationName = "string",
      EnvironmentId = "string",
      EnvironmentName = "string",
      GroupName = "string",
      Description = "string",
      Tier = list(
        Name = "string",
        Type = "string",
        Version = "string"
      ),
      VersionLabel = "string",
      TemplateName = "string",
      SolutionStackName = "string",
      PlatformArn = "string",
      OptionSettings = list(
        list(
          ResourceName = "string",
          Namespace = "string",
          OptionName = "string",
          Value = "string"
        )
      ),
      OptionsToRemove = list(
        list(
          ResourceName = "string",
          Namespace = "string",
          OptionName = "string"
        )
      )
    )

### Examples

    ## Not run: 
    # The following operation updates an environment named "my-env" to version
    # "v2" of the application to which it belongs:
    svc$update_environment(
      EnvironmentName = "my-env",
      VersionLabel = "v2"
    )

    # The following operation configures several options in the
    # aws:elb:loadbalancer namespace:
    svc$update_environment(
      EnvironmentName = "my-env",
      OptionSettings = list(
        list(
          Namespace = "aws:elb:healthcheck",
          OptionName = "Interval",
          Value = "15"
        ),
        list(
          Namespace = "aws:elb:healthcheck",
          OptionName = "Timeout",
          Value = "8"
        ),
        list(
          Namespace = "aws:elb:healthcheck",
          OptionName = "HealthyThreshold",
          Value = "2"
        ),
        list(
          Namespace = "aws:elb:healthcheck",
          OptionName = "UnhealthyThreshold",
          Value = "3"
        )
      )
    )

    ## End(Not run)
