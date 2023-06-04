<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>proton_reject_environment_account_connection</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## In a management account, reject an environment account connection from another environment account

### Description

In a management account, reject an environment account connection from
another environment account.

After you reject an environment account connection request, you *can't*
accept or use the rejected environment account connection.

You *can’t* reject an environment account connection that's connected to
an environment.

For more information, see [Environment account
connections](https://docs.aws.amazon.com/proton/latest/userguide/ag-env-account-connections.html)
in the *Proton User guide*.

### Usage

    proton_reject_environment_account_connection(id)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="proton_reject_environment_account_connection_:_id">id</code></td>
<td><p>[required] The ID of the environment account connection to
reject.</p></td>
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

    svc$reject_environment_account_connection(
      id = "string"
    )
