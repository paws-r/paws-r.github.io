<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_modify_launch_template</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Modifies a launch template

### Description

Modifies a launch template. You can specify which version of the launch
template to set as the default version. When launching an instance, the
default version applies when a launch template version is not specified.

### Usage

    ec2_modify_launch_template(DryRun, ClientToken, LaunchTemplateId,
      LaunchTemplateName, DefaultVersion)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ec2_modify_launch_template_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_modify_launch_template_:_ClientToken">ClientToken</code></td>
<td><p>Unique, case-sensitive identifier you provide to ensure the
idempotency of the request. For more information, see <a
href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring
idempotency</a>.</p>
<p>Constraint: Maximum 128 ASCII characters.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_modify_launch_template_:_LaunchTemplateId">LaunchTemplateId</code></td>
<td><p>The ID of the launch template.</p>
<p>You must specify either the <code>LaunchTemplateId</code> or the
<code>LaunchTemplateName</code>, but not both.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_modify_launch_template_:_LaunchTemplateName">LaunchTemplateName</code></td>
<td><p>The name of the launch template.</p>
<p>You must specify either the <code>LaunchTemplateName</code> or the
<code>LaunchTemplateId</code>, but not both.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_modify_launch_template_:_DefaultVersion">DefaultVersion</code></td>
<td><p>The version number of the launch template to set as the default
version.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      LaunchTemplate = list(
        LaunchTemplateId = "string",
        LaunchTemplateName = "string",
        CreateTime = as.POSIXct(
          "2015-01-01"
        ),
        CreatedBy = "string",
        DefaultVersionNumber = 123,
        LatestVersionNumber = 123,
        Tags = list(
          list(
            Key = "string",
            Value = "string"
          )
        )
      )
    )

### Request syntax

    svc$modify_launch_template(
      DryRun = TRUE|FALSE,
      ClientToken = "string",
      LaunchTemplateId = "string",
      LaunchTemplateName = "string",
      DefaultVersion = "string"
    )

### Examples

    ## Not run: 
    # This example specifies version 2 as the default version of the specified
    # launch template.
    svc$modify_launch_template(
      DefaultVersion = "2",
      LaunchTemplateId = "lt-0abcd290751193123"
    )

    ## End(Not run)
