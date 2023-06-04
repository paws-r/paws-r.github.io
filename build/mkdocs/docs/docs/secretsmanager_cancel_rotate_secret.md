<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>secretsmanager_cancel_rotate_secret</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Turns off automatic rotation, and if a rotation is currently in progress, cancels the rotation

### Description

Turns off automatic rotation, and if a rotation is currently in
progress, cancels the rotation.

If you cancel a rotation in progress, it can leave the `VersionStage`
labels in an unexpected state. You might need to remove the staging
label `AWSPENDING` from the partially created version. You also need to
determine whether to roll back to the previous version of the secret by
moving the staging label `AWSCURRENT` to the version that has
`AWSPENDING`. To determine which version has a specific staging label,
call `list_secret_version_ids`. Then use `update_secret_version_stage`
to change staging labels. For more information, see [How rotation
works](https://docs.aws.amazon.com/secretsmanager/latest/userguide/rotating-secrets.html#rotate-secrets_how).

To turn on automatic rotation again, call `rotate_secret`.

Secrets Manager generates a CloudTrail log entry when you call this
action. Do not include sensitive information in request parameters
because it might be logged. For more information, see [Logging Secrets
Manager events with
CloudTrail](https://docs.aws.amazon.com/secretsmanager/latest/userguide/monitoring-cloudtrail.html).

**Required permissions:** `secretsmanager:CancelRotateSecret`. For more
information, see [IAM policy actions for Secrets
Manager](https://docs.aws.amazon.com/secretsmanager/latest/userguide/reference_iam-permissions.html#reference_iam-permissions_actions)
and [Authentication and access control in Secrets
Manager](https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access.html).

### Usage

    secretsmanager_cancel_rotate_secret(SecretId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="secretsmanager_cancel_rotate_secret_:_SecretId">SecretId</code></td>
<td><p>[required] The ARN or name of the secret.</p>
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
      Name = "string",
      VersionId = "string"
    )

### Request syntax

    svc$cancel_rotate_secret(
      SecretId = "string"
    )

### Examples

    ## Not run: 
    # The following example shows how to cancel rotation for a secret. The
    # operation sets the RotationEnabled field to false and cancels all
    # scheduled rotations. To resume scheduled rotations, you must re-enable
    # rotation by calling the rotate-secret operation.
    svc$cancel_rotate_secret(
      SecretId = "MyTestDatabaseSecret"
    )

    ## End(Not run)
