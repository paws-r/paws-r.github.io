<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>proton_get_account_settings</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Get detail data for Proton account-wide settings

### Description

Get detail data for Proton account-wide settings.

### Usage

    proton_get_account_settings()

### Value

A list with the following syntax:

    list(
      accountSettings = list(
        pipelineCodebuildRoleArn = "string",
        pipelineProvisioningRepository = list(
          arn = "string",
          branch = "string",
          name = "string",
          provider = "GITHUB"|"GITHUB_ENTERPRISE"|"BITBUCKET"
        ),
        pipelineServiceRoleArn = "string"
      )
    )

### Request syntax

    svc$get_account_settings()
