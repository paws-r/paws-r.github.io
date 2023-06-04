<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elasticbeanstalk_validate_configuration_settings</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Takes a set of configuration settings and either a configuration template or environment, and determines whether those values are valid

### Description

Takes a set of configuration settings and either a configuration
template or environment, and determines whether those values are valid.

This action returns a list of messages indicating any errors or warnings
associated with the selection of option values.

### Usage

    elasticbeanstalk_validate_configuration_settings(ApplicationName,
      TemplateName, EnvironmentName, OptionSettings)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elasticbeanstalk_validate_configuration_settings_:_ApplicationName">ApplicationName</code></td>
<td><p>[required] The name of the application that the configuration
template or environment belongs to.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticbeanstalk_validate_configuration_settings_:_TemplateName">TemplateName</code></td>
<td><p>The name of the configuration template to validate the settings
against.</p>
<p>Condition: You cannot specify both this and an environment
name.</p></td>
</tr>
<tr class="odd">
<td><code
id="elasticbeanstalk_validate_configuration_settings_:_EnvironmentName">EnvironmentName</code></td>
<td><p>The name of the environment to validate the settings against.</p>
<p>Condition: You cannot specify both this and a configuration template
name.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticbeanstalk_validate_configuration_settings_:_OptionSettings">OptionSettings</code></td>
<td><p>[required] A list of the options and desired values to
evaluate.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Messages = list(
        list(
          Message = "string",
          Severity = "error"|"warning",
          Namespace = "string",
          OptionName = "string"
        )
      )
    )

### Request syntax

    svc$validate_configuration_settings(
      ApplicationName = "string",
      TemplateName = "string",
      EnvironmentName = "string",
      OptionSettings = list(
        list(
          ResourceName = "string",
          Namespace = "string",
          OptionName = "string",
          Value = "string"
        )
      )
    )

### Examples

    ## Not run: 
    # The following operation validates a CloudWatch custom metrics config
    # document:
    svc$validate_configuration_settings(
      ApplicationName = "my-app",
      EnvironmentName = "my-env",
      OptionSettings = list(
        list(
          Namespace = "aws:elasticbeanstalk:healthreporting:system",
          OptionName = "ConfigDocument",
          Value = "{\"CloudWatchMetrics\": {\"Environment\": {\"ApplicationLatencyP9..."
        )
      )
    )

    ## End(Not run)
