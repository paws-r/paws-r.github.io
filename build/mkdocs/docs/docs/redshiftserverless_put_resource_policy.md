<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>redshiftserverless_put_resource_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates or updates a resource policy

### Description

Creates or updates a resource policy. Currently, you can use policies to
share snapshots across Amazon Web Services accounts.

### Usage

    redshiftserverless_put_resource_policy(policy, resourceArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="redshiftserverless_put_resource_policy_:_policy">policy</code></td>
<td><p>[required] The policy to create or update. For example, the
following policy grants a user authorization to restore a snapshot.</p>
<p><code
style="white-space: pre;">⁠"{\"Version\": \"2012-10-17\", \"Statement\" : [{ \"Sid\": \"AllowUserRestoreFromSnapshot\", \"Principal\":{\"AWS\": [\"739247239426\"]}, \"Action\": [\"redshift-serverless:RestoreFromSnapshot\"] , \"Effect\": \"Allow\" }]}"⁠</code></p></td>
</tr>
<tr class="even">
<td><code
id="redshiftserverless_put_resource_policy_:_resourceArn">resourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the account to
create or update a resource policy for.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      resourcePolicy = list(
        policy = "string",
        resourceArn = "string"
      )
    )

### Request syntax

    svc$put_resource_policy(
      policy = "string",
      resourceArn = "string"
    )
