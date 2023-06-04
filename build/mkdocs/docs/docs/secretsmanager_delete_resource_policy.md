<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>secretsmanager_delete_resource_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the resource-based permission policy attached to the secret

### Description

Deletes the resource-based permission policy attached to the secret. To
attach a policy to a secret, use `put_resource_policy`.

Secrets Manager generates a CloudTrail log entry when you call this
action. Do not include sensitive information in request parameters
because it might be logged. For more information, see [Logging Secrets
Manager events with
CloudTrail](https://docs.aws.amazon.com/secretsmanager/latest/userguide/monitoring-cloudtrail.html).

**Required permissions:** `secretsmanager:DeleteResourcePolicy`. For
more information, see [IAM policy actions for Secrets
Manager](https://docs.aws.amazon.com/secretsmanager/latest/userguide/reference_iam-permissions.html#reference_iam-permissions_actions)
and [Authentication and access control in Secrets
Manager](https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access.html).

### Usage

    secretsmanager_delete_resource_policy(SecretId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="secretsmanager_delete_resource_policy_:_SecretId">SecretId</code></td>
<td><p>[required] The ARN or name of the secret to delete the attached
resource-based policy for.</p>
<p>For an ARN, we recommend that you specify a complete ARN rather than
a partial ARN. See <a
href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/troubleshoot.html#ARN_secretnamehyphen">Finding
a secret from a partial ARN</a>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ARN = "string",
      Name = "string"
    )

### Request syntax

    svc$delete_resource_policy(
      SecretId = "string"
    )

### Examples

    ## Not run: 
    # The following example shows how to delete the resource-based policy that
    # is attached to a secret.
    svc$delete_resource_policy(
      SecretId = "MyTestDatabaseSecret"
    )

    ## End(Not run)
