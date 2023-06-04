<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_delete_launch_template</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a launch template

### Description

Deletes a launch template. Deleting a launch template deletes all of its
versions.

### Usage

    ec2_delete_launch_template(DryRun, LaunchTemplateId, LaunchTemplateName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ec2_delete_launch_template_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_delete_launch_template_:_LaunchTemplateId">LaunchTemplateId</code></td>
<td><p>The ID of the launch template.</p>
<p>You must specify either the <code>LaunchTemplateId</code> or the
<code>LaunchTemplateName</code>, but not both.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_delete_launch_template_:_LaunchTemplateName">LaunchTemplateName</code></td>
<td><p>The name of the launch template.</p>
<p>You must specify either the <code>LaunchTemplateName</code> or the
<code>LaunchTemplateId</code>, but not both.</p></td>
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

    svc$delete_launch_template(
      DryRun = TRUE|FALSE,
      LaunchTemplateId = "string",
      LaunchTemplateName = "string"
    )

### Examples

    ## Not run: 
    # This example deletes the specified launch template.
    svc$delete_launch_template(
      LaunchTemplateId = "lt-0abcd290751193123"
    )

    ## End(Not run)
