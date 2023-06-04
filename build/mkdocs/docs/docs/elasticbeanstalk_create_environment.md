<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elasticbeanstalk_create_environment</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Launches an AWS Elastic Beanstalk environment for the specified application using the specified configuration

### Description

Launches an AWS Elastic Beanstalk environment for the specified
application using the specified configuration.

### Usage

    elasticbeanstalk_create_environment(ApplicationName, EnvironmentName,
      GroupName, Description, CNAMEPrefix, Tier, Tags, VersionLabel,
      TemplateName, SolutionStackName, PlatformArn, OptionSettings,
      OptionsToRemove, OperationsRole)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elasticbeanstalk_create_environment_:_ApplicationName">ApplicationName</code></td>
<td><p>[required] The name of the application that is associated with
this environment.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticbeanstalk_create_environment_:_EnvironmentName">EnvironmentName</code></td>
<td><p>A unique name for the environment.</p>
<p>Constraint: Must be from 4 to 40 characters in length. The name can
contain only letters, numbers, and hyphens. It can't start or end with a
hyphen. This name must be unique within a region in your account. If the
specified name already exists in the region, Elastic Beanstalk returns
an <code>InvalidParameterValue</code> error.</p>
<p>If you don't specify the <code>CNAMEPrefix</code> parameter, the
environment name becomes part of the CNAME, and therefore part of the
visible URL for your application.</p></td>
</tr>
<tr class="odd">
<td><code
id="elasticbeanstalk_create_environment_:_GroupName">GroupName</code></td>
<td><p>The name of the group to which the target environment belongs.
Specify a group name only if the environment's name is specified in an
environment manifest and not with the environment name parameter. See <a
href="https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/environment-cfg-manifest.html">Environment
Manifest (env.yaml)</a> for details.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticbeanstalk_create_environment_:_Description">Description</code></td>
<td><p>Your description for this environment.</p></td>
</tr>
<tr class="odd">
<td><code
id="elasticbeanstalk_create_environment_:_CNAMEPrefix">CNAMEPrefix</code></td>
<td><p>If specified, the environment attempts to use this value as the
prefix for the CNAME in your Elastic Beanstalk environment URL. If not
specified, the CNAME is generated automatically by appending a random
alphanumeric string to the environment name.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticbeanstalk_create_environment_:_Tier">Tier</code></td>
<td><p>Specifies the tier to use in creating this environment. The
environment tier that you choose determines whether Elastic Beanstalk
provisions resources to support a web application that handles HTTP(S)
requests or a web application that handles background-processing
tasks.</p></td>
</tr>
<tr class="odd">
<td><code
id="elasticbeanstalk_create_environment_:_Tags">Tags</code></td>
<td><p>Specifies the tags applied to resources in the
environment.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticbeanstalk_create_environment_:_VersionLabel">VersionLabel</code></td>
<td><p>The name of the application version to deploy.</p>
<p>Default: If not specified, Elastic Beanstalk attempts to deploy the
sample application.</p></td>
</tr>
<tr class="odd">
<td><code
id="elasticbeanstalk_create_environment_:_TemplateName">TemplateName</code></td>
<td><p>The name of the Elastic Beanstalk configuration template to use
with the environment.</p>
<p>If you specify <code>TemplateName</code>, then don't specify
<code>SolutionStackName</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticbeanstalk_create_environment_:_SolutionStackName">SolutionStackName</code></td>
<td><p>The name of an Elastic Beanstalk solution stack (platform
version) to use with the environment. If specified, Elastic Beanstalk
sets the configuration values to the default values associated with the
specified solution stack. For a list of current solution stacks, see <a
href="https://docs.aws.amazon.com/elasticbeanstalk/latest/platforms/platforms-supported.html">Elastic
Beanstalk Supported Platforms</a> in the <em>AWS Elastic Beanstalk
Platforms</em> guide.</p>
<p>If you specify <code>SolutionStackName</code>, don't specify
<code>PlatformArn</code> or <code>TemplateName</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="elasticbeanstalk_create_environment_:_PlatformArn">PlatformArn</code></td>
<td><p>The Amazon Resource Name (ARN) of the custom platform to use with
the environment. For more information, see <a
href="https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/custom-platforms.html">Custom
Platforms</a> in the <em>AWS Elastic Beanstalk Developer Guide</em>.</p>
<p>If you specify <code>PlatformArn</code>, don't specify
<code>SolutionStackName</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticbeanstalk_create_environment_:_OptionSettings">OptionSettings</code></td>
<td><p>If specified, AWS Elastic Beanstalk sets the specified
configuration options to the requested value in the configuration set
for the new environment. These override the values obtained from the
solution stack or the configuration template.</p></td>
</tr>
<tr class="odd">
<td><code
id="elasticbeanstalk_create_environment_:_OptionsToRemove">OptionsToRemove</code></td>
<td><p>A list of custom user-defined configuration options to remove
from the configuration set for this new environment.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticbeanstalk_create_environment_:_OperationsRole">OperationsRole</code></td>
<td><p>The Amazon Resource Name (ARN) of an existing IAM role to be used
as the environment's operations role. If specified, Elastic Beanstalk
uses the operations role for permissions to downstream services during
this call and during subsequent calls acting on this environment. To
specify an operations role, you must have the <code>iam:PassRole</code>
permission for the role. For more information, see <a
href="https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/">Operations
roles</a> in the <em>AWS Elastic Beanstalk Developer
Guide</em>.</p></td>
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

    svc$create_environment(
      ApplicationName = "string",
      EnvironmentName = "string",
      GroupName = "string",
      Description = "string",
      CNAMEPrefix = "string",
      Tier = list(
        Name = "string",
        Type = "string",
        Version = "string"
      ),
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
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
      ),
      OperationsRole = "string"
    )

### Examples

    ## Not run: 
    # The following operation creates a new environment for version v1 of a
    # java application named my-app:
    svc$create_environment(
      ApplicationName = "my-app",
      CNAMEPrefix = "my-app",
      EnvironmentName = "my-env",
      SolutionStackName = "64bit Amazon Linux 2015.03 v2.0.0 running Tomcat 8 Java 8",
      VersionLabel = "v1"
    )

    ## End(Not run)
