<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>proton_create_environment_account_connection</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Create an environment account connection in an environment account so that environment infrastructure resources can be provisioned in the environment account from a management account

### Description

Create an environment account connection in an environment account so
that environment infrastructure resources can be provisioned in the
environment account from a management account.

An environment account connection is a secure bi-directional connection
between a *management account* and an *environment account* that
maintains authorization and permissions. For more information, see
[Environment account
connections](https://docs.aws.amazon.com/proton/latest/userguide/ag-env-account-connections.html)
in the *Proton User guide*.

### Usage

    proton_create_environment_account_connection(clientToken,
      codebuildRoleArn, componentRoleArn, environmentName,
      managementAccountId, roleArn, tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="proton_create_environment_account_connection_:_clientToken">clientToken</code></td>
<td><p>When included, if two identical requests are made with the same
client token, Proton returns the environment account connection that the
first request created.</p></td>
</tr>
<tr class="even">
<td><code
id="proton_create_environment_account_connection_:_codebuildRoleArn">codebuildRoleArn</code></td>
<td><p>The Amazon Resource Name (ARN) of an IAM service role in the
environment account. Proton uses this role to provision infrastructure
resources using CodeBuild-based provisioning in the associated
environment account.</p></td>
</tr>
<tr class="odd">
<td><code
id="proton_create_environment_account_connection_:_componentRoleArn">componentRoleArn</code></td>
<td><p>The Amazon Resource Name (ARN) of the IAM service role that
Proton uses when provisioning directly defined components in the
associated environment account. It determines the scope of
infrastructure that a component can provision in the account.</p>
<p>You must specify <code>componentRoleArn</code> to allow directly
defined components to be associated with any environments running in
this account.</p>
<p>For more information about components, see <a
href="https://docs.aws.amazon.com/proton/latest/userguide/ag-components.html">Proton
components</a> in the <em>Proton User Guide</em>.</p></td>
</tr>
<tr class="even">
<td><code
id="proton_create_environment_account_connection_:_environmentName">environmentName</code></td>
<td><p>[required] The name of the Proton environment that's created in
the associated management account.</p></td>
</tr>
<tr class="odd">
<td><code
id="proton_create_environment_account_connection_:_managementAccountId">managementAccountId</code></td>
<td><p>[required] The ID of the management account that accepts or
rejects the environment account connection. You create and manage the
Proton environment in this account. If the management account accepts
the environment account connection, Proton can use the associated IAM
role to provision environment infrastructure resources in the associated
environment account.</p></td>
</tr>
<tr class="even">
<td><code
id="proton_create_environment_account_connection_:_roleArn">roleArn</code></td>
<td><p>The Amazon Resource Name (ARN) of the IAM service role that's
created in the environment account. Proton uses this role to provision
infrastructure resources in the associated environment account.</p></td>
</tr>
<tr class="odd">
<td><code
id="proton_create_environment_account_connection_:_tags">tags</code></td>
<td><p>An optional list of metadata items that you can associate with
the Proton environment account connection. A tag is a key-value
pair.</p>
<p>For more information, see <a
href="https://docs.aws.amazon.com/proton/latest/userguide/resources.html">Proton
resources and tagging</a> in the <em>Proton User Guide</em>.</p></td>
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

    svc$create_environment_account_connection(
      clientToken = "string",
      codebuildRoleArn = "string",
      componentRoleArn = "string",
      environmentName = "string",
      managementAccountId = "string",
      roleArn = "string",
      tags = list(
        list(
          key = "string",
          value = "string"
        )
      )
    )
