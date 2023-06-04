<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>proton_update_account_settings</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Update Proton settings that are used for multiple services in the Amazon Web Services account

### Description

Update Proton settings that are used for multiple services in the Amazon
Web Services account.

### Usage

    proton_update_account_settings(deletePipelineProvisioningRepository,
      pipelineCodebuildRoleArn, pipelineProvisioningRepository,
      pipelineServiceRoleArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="proton_update_account_settings_:_deletePipelineProvisioningRepository">deletePipelineProvisioningRepository</code></td>
<td><p>Set to <code>true</code> to remove a configured pipeline
repository from the account settings. Don't set this field if you are
updating the configured pipeline repository.</p></td>
</tr>
<tr class="even">
<td><code
id="proton_update_account_settings_:_pipelineCodebuildRoleArn">pipelineCodebuildRoleArn</code></td>
<td><p>The Amazon Resource Name (ARN) of the service role you want to
use for provisioning pipelines. Proton assumes this role for
CodeBuild-based provisioning.</p></td>
</tr>
<tr class="odd">
<td><code
id="proton_update_account_settings_:_pipelineProvisioningRepository">pipelineProvisioningRepository</code></td>
<td><p>A linked repository for pipeline provisioning. Specify it if you
have environments configured for self-managed provisioning with services
that include pipelines. A linked repository is a repository that has
been registered with Proton. For more information, see
<code>create_repository</code>.</p>
<p>To remove a previously configured repository, set
<code>deletePipelineProvisioningRepository</code> to <code>true</code>,
and don't set <code>pipelineProvisioningRepository</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="proton_update_account_settings_:_pipelineServiceRoleArn">pipelineServiceRoleArn</code></td>
<td><p>The Amazon Resource Name (ARN) of the service role you want to
use for provisioning pipelines. Assumed by Proton for Amazon Web
Services-managed provisioning, and by customer-owned automation for
self-managed provisioning.</p>
<p>To remove a previously configured ARN, specify an empty
string.</p></td>
</tr>
</tbody>
</table>

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

    svc$update_account_settings(
      deletePipelineProvisioningRepository = TRUE|FALSE,
      pipelineCodebuildRoleArn = "string",
      pipelineProvisioningRepository = list(
        branch = "string",
        name = "string",
        provider = "GITHUB"|"GITHUB_ENTERPRISE"|"BITBUCKET"
      ),
      pipelineServiceRoleArn = "string"
    )
