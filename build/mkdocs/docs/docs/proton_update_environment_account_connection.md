<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>proton_update_environment_account_connection</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## In an environment account, update an environment account connection to use a new IAM role

### Description

In an environment account, update an environment account connection to
use a new IAM role.

For more information, see [Environment account
connections](https://docs.aws.amazon.com/proton/latest/userguide/ag-env-account-connections.html)
in the *Proton User guide*.

### Usage

    proton_update_environment_account_connection(codebuildRoleArn,
      componentRoleArn, id, roleArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="proton_update_environment_account_connection_:_codebuildRoleArn">codebuildRoleArn</code></td>
<td><p>The Amazon Resource Name (ARN) of an IAM service role in the
environment account. Proton uses this role to provision infrastructure
resources using CodeBuild-based provisioning in the associated
environment account.</p></td>
</tr>
<tr class="even">
<td><code
id="proton_update_environment_account_connection_:_componentRoleArn">componentRoleArn</code></td>
<td><p>The Amazon Resource Name (ARN) of the IAM service role that
Proton uses when provisioning directly defined components in the
associated environment account. It determines the scope of
infrastructure that a component can provision in the account.</p>
<p>The environment account connection must have a
<code>componentRoleArn</code> to allow directly defined components to be
associated with any environments running in the account.</p>
<p>For more information about components, see <a
href="https://docs.aws.amazon.com/proton/latest/userguide/ag-components.html">Proton
components</a> in the <em>Proton User Guide</em>.</p></td>
</tr>
<tr class="odd">
<td><code
id="proton_update_environment_account_connection_:_id">id</code></td>
<td><p>[required] The ID of the environment account connection to
update.</p></td>
</tr>
<tr class="even">
<td><code
id="proton_update_environment_account_connection_:_roleArn">roleArn</code></td>
<td><p>The Amazon Resource Name (ARN) of the IAM service role that's
associated with the environment account connection to update.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      environmentAccountConnection = list(
        arn = "string",
        codebuildRoleArn = "string",
        componentRoleArn = "string",
        environmentAccountId = "string",
        environmentName = "string",
        id = "string",
        lastModifiedAt = as.POSIXct(
          "2015-01-01"
        ),
        managementAccountId = "string",
        requestedAt = as.POSIXct(
          "2015-01-01"
        ),
        roleArn = "string",
        status = "PENDING"|"CONNECTED"|"REJECTED"
      )
    )

### Request syntax

    svc$update_environment_account_connection(
      codebuildRoleArn = "string",
      componentRoleArn = "string",
      id = "string",
      roleArn = "string"
    )
