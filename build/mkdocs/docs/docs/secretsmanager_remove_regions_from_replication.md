<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>secretsmanager_remove_regions_from_replication</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## For a secret that is replicated to other Regions, deletes the secret replicas from the Regions you specify

### Description

For a secret that is replicated to other Regions, deletes the secret
replicas from the Regions you specify.

Secrets Manager generates a CloudTrail log entry when you call this
action. Do not include sensitive information in request parameters
because it might be logged. For more information, see [Logging Secrets
Manager events with
CloudTrail](https://docs.aws.amazon.com/secretsmanager/latest/userguide/monitoring-cloudtrail.html).

**Required permissions:** `secretsmanager:RemoveRegionsFromReplication`.
For more information, see [IAM policy actions for Secrets
Manager](https://docs.aws.amazon.com/secretsmanager/latest/userguide/reference_iam-permissions.html#reference_iam-permissions_actions)
and [Authentication and access control in Secrets
Manager](https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access.html).

### Usage

    secretsmanager_remove_regions_from_replication(SecretId,
      RemoveReplicaRegions)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="secretsmanager_remove_regions_from_replication_:_SecretId">SecretId</code></td>
<td><p>[required] The ARN or name of the secret.</p></td>
</tr>
<tr class="even">
<td><code
id="secretsmanager_remove_regions_from_replication_:_RemoveReplicaRegions">RemoveReplicaRegions</code></td>
<td><p>[required] The Regions of the replicas to remove.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ARN = "string",
      ReplicationStatus = list(
        list(
          Region = "string",
          KmsKeyId = "string",
          Status = "InSync"|"Failed"|"InProgress",
          StatusMessage = "string",
          LastAccessedDate = as.POSIXct(
            "2015-01-01"
          )
        )
      )
    )

### Request syntax

    svc$remove_regions_from_replication(
      SecretId = "string",
      RemoveReplicaRegions = list(
        "string"
      )
    )
