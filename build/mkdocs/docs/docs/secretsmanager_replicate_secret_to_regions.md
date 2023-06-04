<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>secretsmanager_replicate_secret_to_regions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Replicates the secret to a new Regions

### Description

Replicates the secret to a new Regions. See [Multi-Region
secrets](https://docs.aws.amazon.com/secretsmanager/latest/userguide/create-manage-multi-region-secrets.html).

Secrets Manager generates a CloudTrail log entry when you call this
action. Do not include sensitive information in request parameters
because it might be logged. For more information, see [Logging Secrets
Manager events with
CloudTrail](https://docs.aws.amazon.com/secretsmanager/latest/userguide/monitoring-cloudtrail.html).

**Required permissions:** `secretsmanager:ReplicateSecretToRegions`. For
more information, see [IAM policy actions for Secrets
Manager](https://docs.aws.amazon.com/secretsmanager/latest/userguide/reference_iam-permissions.html#reference_iam-permissions_actions)
and [Authentication and access control in Secrets
Manager](https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access.html).

### Usage

    secretsmanager_replicate_secret_to_regions(SecretId, AddReplicaRegions,
      ForceOverwriteReplicaSecret)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="secretsmanager_replicate_secret_to_regions_:_SecretId">SecretId</code></td>
<td><p>[required] The ARN or name of the secret to replicate.</p></td>
</tr>
<tr class="even">
<td><code
id="secretsmanager_replicate_secret_to_regions_:_AddReplicaRegions">AddReplicaRegions</code></td>
<td><p>[required] A list of Regions in which to replicate the
secret.</p></td>
</tr>
<tr class="odd">
<td><code
id="secretsmanager_replicate_secret_to_regions_:_ForceOverwriteReplicaSecret">ForceOverwriteReplicaSecret</code></td>
<td><p>Specifies whether to overwrite a secret with the same name in the
destination Region. By default, secrets aren't overwritten.</p></td>
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

    svc$replicate_secret_to_regions(
      SecretId = "string",
      AddReplicaRegions = list(
        list(
          Region = "string",
          KmsKeyId = "string"
        )
      ),
      ForceOverwriteReplicaSecret = TRUE|FALSE
    )

### Examples

    ## Not run: 
    # The following example replicates a secret to eu-west-3. The replica is
    # encrypted with the AWS managed key aws/secretsmanager.
    svc$replicate_secret_to_regions(
      AddReplicaRegions = list(
        list(
          Region = "eu-west-3"
        )
      ),
      ForceOverwriteReplicaSecret = TRUE,
      SecretId = "MyTestSecret"
    )

    ## End(Not run)
