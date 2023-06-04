<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>secretsmanager_stop_replication_to_replica</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes the link between the replica secret and the primary secret and promotes the replica to a primary secret in the replica Region

### Description

Removes the link between the replica secret and the primary secret and
promotes the replica to a primary secret in the replica Region.

You must call this operation from the Region in which you want to
promote the replica to a primary secret.

Secrets Manager generates a CloudTrail log entry when you call this
action. Do not include sensitive information in request parameters
because it might be logged. For more information, see [Logging Secrets
Manager events with
CloudTrail](https://docs.aws.amazon.com/secretsmanager/latest/userguide/monitoring-cloudtrail.html).

**Required permissions:** `secretsmanager:StopReplicationToReplica`. For
more information, see [IAM policy actions for Secrets
Manager](https://docs.aws.amazon.com/secretsmanager/latest/userguide/reference_iam-permissions.html#reference_iam-permissions_actions)
and [Authentication and access control in Secrets
Manager](https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access.html).

### Usage

    secretsmanager_stop_replication_to_replica(SecretId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="secretsmanager_stop_replication_to_replica_:_SecretId">SecretId</code></td>
<td><p>[required] The ARN of the primary secret.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ARN = "string"
    )

### Request syntax

    svc$stop_replication_to_replica(
      SecretId = "string"
    )
