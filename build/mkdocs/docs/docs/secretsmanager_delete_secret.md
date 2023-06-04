<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>secretsmanager_delete_secret</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a secret and all of its versions

### Description

Deletes a secret and all of its versions. You can specify a recovery
window during which you can restore the secret. The minimum recovery
window is 7 days. The default recovery window is 30 days. Secrets
Manager attaches a `DeletionDate` stamp to the secret that specifies the
end of the recovery window. At the end of the recovery window, Secrets
Manager deletes the secret permanently.

You can't delete a primary secret that is replicated to other Regions.
You must first delete the replicas using
`remove_regions_from_replication`, and then delete the primary secret.
When you delete a replica, it is deleted immediately.

You can't directly delete a version of a secret. Instead, you remove all
staging labels from the version using `update_secret_version_stage`.
This marks the version as deprecated, and then Secrets Manager can
automatically delete the version in the background.

To determine whether an application still uses a secret, you can create
an Amazon CloudWatch alarm to alert you to any attempts to access a
secret during the recovery window. For more information, see [Monitor
secrets scheduled for
deletion](https://docs.aws.amazon.com/secretsmanager/latest/userguide/monitoring_cloudwatch_deleted-secrets.html).

Secrets Manager performs the permanent secret deletion at the end of the
waiting period as a background task with low priority. There is no
guarantee of a specific time after the recovery window for the permanent
delete to occur.

At any time before recovery window ends, you can use `restore_secret` to
remove the `DeletionDate` and cancel the deletion of the secret.

When a secret is scheduled for deletion, you cannot retrieve the secret
value. You must first cancel the deletion with `restore_secret` and then
you can retrieve the secret.

Secrets Manager generates a CloudTrail log entry when you call this
action. Do not include sensitive information in request parameters
because it might be logged. For more information, see [Logging Secrets
Manager events with
CloudTrail](https://docs.aws.amazon.com/secretsmanager/latest/userguide/monitoring-cloudtrail.html).

**Required permissions:** `secretsmanager:DeleteSecret`. For more
information, see [IAM policy actions for Secrets
Manager](https://docs.aws.amazon.com/secretsmanager/latest/userguide/reference_iam-permissions.html#reference_iam-permissions_actions)
and [Authentication and access control in Secrets
Manager](https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access.html).

### Usage

    secretsmanager_delete_secret(SecretId, RecoveryWindowInDays,
      ForceDeleteWithoutRecovery)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="secretsmanager_delete_secret_:_SecretId">SecretId</code></td>
<td><p>[required] The ARN or name of the secret to delete.</p>
<p>For an ARN, we recommend that you specify a complete ARN rather than
a partial ARN. See <a
href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/troubleshoot.html#ARN_secretnamehyphen">Finding
a secret from a partial ARN</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="secretsmanager_delete_secret_:_RecoveryWindowInDays">RecoveryWindowInDays</code></td>
<td><p>The number of days from 7 to 30 that Secrets Manager waits before
permanently deleting the secret. You can't use both this parameter and
<code>ForceDeleteWithoutRecovery</code> in the same call. If you don't
use either, then by default Secrets Manager uses a 30 day recovery
window.</p></td>
</tr>
<tr class="odd">
<td><code
id="secretsmanager_delete_secret_:_ForceDeleteWithoutRecovery">ForceDeleteWithoutRecovery</code></td>
<td><p>Specifies whether to delete the secret without any recovery
window. You can't use both this parameter and
<code>RecoveryWindowInDays</code> in the same call. If you don't use
either, then by default Secrets Manager uses a 30 day recovery
window.</p>
<p>Secrets Manager performs the actual deletion with an asynchronous
background process, so there might be a short delay before the secret is
permanently deleted. If you delete a secret and then immediately create
a secret with the same name, use appropriate back off and retry
logic.</p>
<p>If you forcibly delete an already deleted or nonexistent secret, the
operation does not return <code>ResourceNotFoundException</code>.</p>
<p>Use this parameter with caution. This parameter causes the operation
to skip the normal recovery window before the permanent deletion that
Secrets Manager would normally impose with the
<code>RecoveryWindowInDays</code> parameter. If you delete a secret with
the <code>ForceDeleteWithoutRecovery</code> parameter, then you have no
opportunity to recover the secret. You lose the secret
permanently.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ARN = "string",
      Name = "string",
      DeletionDate = as.POSIXct(
        "2015-01-01"
      )
    )

### Request syntax

    svc$delete_secret(
      SecretId = "string",
      RecoveryWindowInDays = 123,
      ForceDeleteWithoutRecovery = TRUE|FALSE
    )

### Examples

    ## Not run: 
    # The following example shows how to delete a secret. The secret stays in
    # your account in a deprecated and inaccessible state until the recovery
    # window ends. After the date and time in the DeletionDate response field
    # has passed, you can no longer recover this secret with restore-secret.
    svc$delete_secret(
      RecoveryWindowInDays = 7L,
      SecretId = "MyTestDatabaseSecret1"
    )

    ## End(Not run)
