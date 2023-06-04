<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elasticbeanstalk_describe_configuration_options</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the configuration options that are used in a particular configuration template or environment, or that a specified solution stack defines

### Description

Describes the configuration options that are used in a particular
configuration template or environment, or that a specified solution
stack defines. The description includes the values the options, their
default values, and an indication of the required action on a running
environment if an option value is changed.

### Usage

    elasticbeanstalk_describe_configuration_options(ApplicationName,
      TemplateName, EnvironmentName, SolutionStackName, PlatformArn, Options)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elasticbeanstalk_describe_configuration_options_:_ApplicationName">ApplicationName</code></td>
<td><p>The name of the application associated with the configuration
template or environment. Only needed if you want to describe the
configuration options associated with either the configuration template
or environment.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticbeanstalk_describe_configuration_options_:_TemplateName">TemplateName</code></td>
<td><p>The name of the configuration template whose configuration
options you want to describe.</p></td>
</tr>
<tr class="odd">
<td><code
id="elasticbeanstalk_describe_configuration_options_:_EnvironmentName">EnvironmentName</code></td>
<td><p>The name of the environment whose configuration options you want
to describe.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticbeanstalk_describe_configuration_options_:_SolutionStackName">SolutionStackName</code></td>
<td><p>The name of the solution stack whose configuration options you
want to describe.</p></td>
</tr>
<tr class="odd">
<td><code
id="elasticbeanstalk_describe_configuration_options_:_PlatformArn">PlatformArn</code></td>
<td><p>The ARN of the custom platform.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticbeanstalk_describe_configuration_options_:_Options">Options</code></td>
<td><p>If specified, restricts the descriptions to only the specified
options.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      SolutionStackName = "string",
      PlatformArn = "string",
      Options = list(
        list(
          Namespace = "string",
          Name = "string",
          DefaultValue = "string",
          ChangeSeverity = "string",
          UserDefined = TRUE|FALSE,
          ValueType = "Scalar"|"List",
          ValueOptions = list(
            "string"
          ),
          MinValue = 123,
          MaxValue = 123,
          MaxLength = 123,
          Regex = list(
            Pattern = "string",
            Label = "string"
          )
        )
      )
    )

### Request syntax

    svc$describe_configuration_options(
      ApplicationName = "string",
      TemplateName = "string",
      EnvironmentName = "string",
      SolutionStackName = "string",
      PlatformArn = "string",
      Options = list(
        list(
          ResourceName = "string",
          Namespace = "string",
          OptionName = "string"
        )
      )
    )

### Examples

    ## Not run: 
    # The following operation retrieves descriptions of all available
    # configuration options for an environment named my-env:
    svc$describe_configuration_options(
      ApplicationName = "my-app",
      EnvironmentName = "my-env"
    )

    ## End(Not run)
