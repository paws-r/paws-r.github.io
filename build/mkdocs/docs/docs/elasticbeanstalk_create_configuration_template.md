<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elasticbeanstalk_create_configuration_template</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates an AWS Elastic Beanstalk configuration template, associated with a specific Elastic Beanstalk application

### Description

Creates an AWS Elastic Beanstalk configuration template, associated with
a specific Elastic Beanstalk application. You define application
configuration settings in a configuration template. You can then use the
configuration template to deploy different versions of the application
with the same configuration settings.

Templates aren't associated with any environment. The `EnvironmentName`
response element is always `null`.

Related Topics

-   `describe_configuration_options`

-   `describe_configuration_settings`

-   `list_available_solution_stacks`

### Usage

    elasticbeanstalk_create_configuration_template(ApplicationName,
      TemplateName, SolutionStackName, PlatformArn, SourceConfiguration,
      EnvironmentId, Description, OptionSettings, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elasticbeanstalk_create_configuration_template_:_ApplicationName">ApplicationName</code></td>
<td><p>[required] The name of the Elastic Beanstalk application to
associate with this configuration template.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticbeanstalk_create_configuration_template_:_TemplateName">TemplateName</code></td>
<td><p>[required] The name of the configuration template.</p>
<p>Constraint: This name must be unique per application.</p></td>
</tr>
<tr class="odd">
<td><code
id="elasticbeanstalk_create_configuration_template_:_SolutionStackName">SolutionStackName</code></td>
<td><p>The name of an Elastic Beanstalk solution stack (platform
version) that this configuration uses. For example, <code
style="white-space: pre;">⁠64bit Amazon Linux 2013.09 running Tomcat 7 Java 7⁠</code>.
A solution stack specifies the operating system, runtime, and
application server for a configuration template. It also determines the
set of configuration options as well as the possible and default values.
For more information, see <a
href="https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/concepts.platforms.html">Supported
Platforms</a> in the <em>AWS Elastic Beanstalk Developer Guide</em>.</p>
<p>You must specify <code>SolutionStackName</code> if you don't specify
<code>PlatformArn</code>, <code>EnvironmentId</code>, or
<code>SourceConfiguration</code>.</p>
<p>Use the <a
href="https://docs.aws.amazon.com/elasticbeanstalk/latest/api/API_ListAvailableSolutionStacks.html"><code>list_available_solution_stacks</code></a>
API to obtain a list of available solution stacks.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticbeanstalk_create_configuration_template_:_PlatformArn">PlatformArn</code></td>
<td><p>The Amazon Resource Name (ARN) of the custom platform. For more
information, see <a
href="https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/custom-platforms.html">Custom
Platforms</a> in the <em>AWS Elastic Beanstalk Developer Guide</em>.</p>
<p>If you specify <code>PlatformArn</code>, then don't specify
<code>SolutionStackName</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="elasticbeanstalk_create_configuration_template_:_SourceConfiguration">SourceConfiguration</code></td>
<td><p>An Elastic Beanstalk configuration template to base this one on.
If specified, Elastic Beanstalk uses the configuration values from the
specified configuration template to create a new configuration.</p>
<p>Values specified in <code>OptionSettings</code> override any values
obtained from the <code>SourceConfiguration</code>.</p>
<p>You must specify <code>SourceConfiguration</code> if you don't
specify <code>PlatformArn</code>, <code>EnvironmentId</code>, or
<code>SolutionStackName</code>.</p>
<p>Constraint: If both solution stack name and source configuration are
specified, the solution stack of the source configuration template must
match the specified solution stack name.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticbeanstalk_create_configuration_template_:_EnvironmentId">EnvironmentId</code></td>
<td><p>The ID of an environment whose settings you want to use to create
the configuration template. You must specify <code>EnvironmentId</code>
if you don't specify <code>PlatformArn</code>,
<code>SolutionStackName</code>, or
<code>SourceConfiguration</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="elasticbeanstalk_create_configuration_template_:_Description">Description</code></td>
<td><p>An optional description for this configuration.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticbeanstalk_create_configuration_template_:_OptionSettings">OptionSettings</code></td>
<td><p>Option values for the Elastic Beanstalk configuration, such as
the instance type. If specified, these values override the values
obtained from the solution stack or the source configuration template.
For a complete list of Elastic Beanstalk configuration options, see <a
href="https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/command-options.html">Option
Values</a> in the <em>AWS Elastic Beanstalk Developer
Guide</em>.</p></td>
</tr>
<tr class="odd">
<td><code
id="elasticbeanstalk_create_configuration_template_:_Tags">Tags</code></td>
<td><p>Specifies the tags applied to the configuration
template.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

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

### Request syntax

    svc$create_configuration_template(
      ApplicationName = "string",
      TemplateName = "string",
      SolutionStackName = "string",
      PlatformArn = "string",
      SourceConfiguration = list(
        ApplicationName = "string",
        TemplateName = "string"
      ),
      EnvironmentId = "string",
      Description = "string",
      OptionSettings = list(
        list(
          ResourceName = "string",
          Namespace = "string",
          OptionName = "string",
          Value = "string"
        )
      ),
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )

### Examples

    ## Not run: 
    # The following operation creates a configuration template named my-app-v1
    # from the settings applied to an environment with the id e-rpqsewtp2j:
    svc$create_configuration_template(
      ApplicationName = "my-app",
      EnvironmentId = "e-rpqsewtp2j",
      TemplateName = "my-app-v1"
    )

    ## End(Not run)
