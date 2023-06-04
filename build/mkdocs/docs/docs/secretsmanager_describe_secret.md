<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>secretsmanager_describe_secret</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the details of a secret

### Description

Retrieves the details of a secret. It does not include the encrypted
secret value. Secrets Manager only returns fields that have a value in
the response.

Secrets Manager generates a CloudTrail log entry when you call this
action. Do not include sensitive information in request parameters
because it might be logged. For more information, see [Logging Secrets
Manager events with
CloudTrail](https://docs.aws.amazon.com/secretsmanager/latest/userguide/monitoring-cloudtrail.html).

**Required permissions:** `secretsmanager:DescribeSecret`. For more
information, see [IAM policy actions for Secrets
Manager](https://docs.aws.amazon.com/secretsmanager/latest/userguide/reference_iam-permissions.html#reference_iam-permissions_actions)
and [Authentication and access control in Secrets
Manager](https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access.html).

### Usage

    secretsmanager_describe_secret(SecretId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="secretsmanager_describe_secret_:_SecretId">SecretId</code></td>
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
      Description = "string",
      KmsKeyId = "string",
      RotationEnabled = TRUE|FALSE,
      RotationLambdaARN = "string",
      RotationRules = list(
        AutomaticallyAfterDays = 123,
        Duration = "string",
        ScheduleExpression = "string"
      ),
      LastRotatedDate = as.POSIXct(
        "2015-01-01"
      ),
      LastChangedDate = as.POSIXct(
        "2015-01-01"
      ),
      LastAccessedDate = as.POSIXct(
        "2015-01-01"
      ),
      DeletedDate = as.POSIXct(
        "2015-01-01"
      ),
      NextRotationDate = as.POSIXct(
        "2015-01-01"
      ),
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      ),
      VersionIdsToStages = list(
        list(
          "string"
        )
      ),
      OwningService = "string",
      CreatedDate = as.POSIXct(
        "2015-01-01"
      ),
      PrimaryRegion = "string",
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

    svc$describe_secret(
      SecretId = "string"
    )

### Examples

    ## Not run: 
    # The following example shows how to get the details about a secret.
    svc$describe_secret(
      SecretId = "MyTestDatabaseSecret"
    )

    ## End(Not run)
