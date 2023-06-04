<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elasticbeanstalk_describe_configuration_settings</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a description of the settings for the specified configuration set, that is, either a configuration template or the configuration set associated with a running environment

### Description

Returns a description of the settings for the specified configuration
set, that is, either a configuration template or the configuration set
associated with a running environment.

When describing the settings for the configuration set associated with a
running environment, it is possible to receive two sets of setting
descriptions. One is the deployed configuration set, and the other is a
draft configuration of an environment that is either in the process of
deployment or that failed to deploy.

Related Topics

-   `delete_environment_configuration`

### Usage

    elasticbeanstalk_describe_configuration_settings(ApplicationName,
      TemplateName, EnvironmentName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elasticbeanstalk_describe_configuration_settings_:_ApplicationName">ApplicationName</code></td>
<td><p>[required] The application for the environment or configuration
template.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticbeanstalk_describe_configuration_settings_:_TemplateName">TemplateName</code></td>
<td><p>The name of the configuration template to describe.</p>
<p>Conditional: You must specify either this parameter or an
EnvironmentName, but not both. If you specify both, AWS Elastic
Beanstalk returns an <code>InvalidParameterCombination</code> error. If
you do not specify either, AWS Elastic Beanstalk returns a
<code>MissingRequiredParameter</code> error.</p></td>
</tr>
<tr class="odd">
<td><code
id="elasticbeanstalk_describe_configuration_settings_:_EnvironmentName">EnvironmentName</code></td>
<td><p>The name of the environment to describe.</p>
<p>Condition: You must specify either this or a TemplateName, but not
both. If you specify both, AWS Elastic Beanstalk returns an
<code>InvalidParameterCombination</code> error. If you do not specify
either, AWS Elastic Beanstalk returns
<code>MissingRequiredParameter</code> error.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ConfigurationSettings = list(
        list(
          SolutionStackName = "string",
          PlatformArn = "string",
          ApplicationName = "string",
          TemplateName = "string",
          Description = "string",
          EnvironmentName = "string",
          DeploymentStatus = "deployed"|"pending"|"failed",
          DateCreated = as.POSIXct(
            "2015-01-01"
          ),
          DateUpdated = as.POSIXct(
            "2015-01-01"
          ),
          OptionSettings = list(
            list(
              ResourceName = "string",
              Namespace = "string",
              OptionName = "string",
              Value = "string"
            )
          )
        )
      )
    )

### Request syntax

    svc$describe_configuration_settings(
      ApplicationName = "string",
      TemplateName = "string",
      EnvironmentName = "string"
    )

### Examples

    ## Not run: 
    # The following operation retrieves configuration settings for an
    # environment named my-env:
    svc$describe_configuration_settings(
      ApplicationName = "my-app",
      EnvironmentName = "my-env"
    )

    ## End(Not run)
