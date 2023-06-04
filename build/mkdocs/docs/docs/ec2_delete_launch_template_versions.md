<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_delete_launch_template_versions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes one or more versions of a launch template

### Description

Deletes one or more versions of a launch template. You cannot delete the
default version of a launch template; you must first assign a different
version as the default. If the default version is the only version for
the launch template, you must delete the entire launch template using
`delete_launch_template`.

### Usage

    ec2_delete_launch_template_versions(DryRun, LaunchTemplateId,
      LaunchTemplateName, Versions)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_delete_launch_template_versions_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_delete_launch_template_versions_:_LaunchTemplateId">LaunchTemplateId</code></td>
<td><p>The ID of the launch template.</p>
<p>You must specify either the <code>LaunchTemplateId</code> or the
<code>LaunchTemplateName</code>, but not both.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_delete_launch_template_versions_:_LaunchTemplateName">LaunchTemplateName</code></td>
<td><p>The name of the launch template.</p>
<p>You must specify either the <code>LaunchTemplateName</code> or the
<code>LaunchTemplateId</code>, but not both.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_delete_launch_template_versions_:_Versions">Versions</code></td>
<td><p>[required] The version numbers of one or more launch template
versions to delete.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      SuccessfullyDeletedLaunchTemplateVersions = list(
        list(
          LaunchTemplateId = "string",
          LaunchTemplateName = "string",
          VersionNumber = 123
        )
      ),
      UnsuccessfullyDeletedLaunchTemplateVersions = list(
        list(
          LaunchTemplateId = "string",
          LaunchTemplateName = "string",
          VersionNumber = 123,
          ResponseError = list(
            Code = "launchTemplateIdDoesNotExist"|"launchTemplateIdMalformed"|"launchTemplateNameDoesNotExist"|"launchTemplateNameMalformed"|"launchTemplateVersionDoesNotExist"|"unexpectedError",
            Message = "string"
          )
        )
      )
    )

### Request syntax

    svc$delete_launch_template_versions(
      DryRun = TRUE|FALSE,
      LaunchTemplateId = "string",
      LaunchTemplateName = "string",
      Versions = list(
        "string"
      )
    )

### Examples

    ## Not run: 
    # This example deletes the specified launch template version.
    svc$delete_launch_template_versions(
      LaunchTemplateId = "lt-0abcd290751193123",
      Versions = list(
        "1"
      )
    )

    ## End(Not run)
