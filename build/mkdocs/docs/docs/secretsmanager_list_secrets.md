<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>secretsmanager_list_secrets</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the secrets that are stored by Secrets Manager in the Amazon Web Services account, not including secrets that are marked for deletion

### Description

Lists the secrets that are stored by Secrets Manager in the Amazon Web
Services account, not including secrets that are marked for deletion. To
see secrets marked for deletion, use the Secrets Manager console.

ListSecrets is eventually consistent, however it might not reflect
changes from the last five minutes. To get the latest information for a
specific secret, use `describe_secret`.

To list the versions of a secret, use `list_secret_version_ids`.

To get the secret value from `SecretString` or `SecretBinary`, call
`get_secret_value`.

For information about finding secrets in the console, see [Find secrets
in Secrets
Manager](https://docs.aws.amazon.com/secretsmanager/latest/userguide/manage_search-secret.html).

Secrets Manager generates a CloudTrail log entry when you call this
action. Do not include sensitive information in request parameters
because it might be logged. For more information, see [Logging Secrets
Manager events with
CloudTrail](https://docs.aws.amazon.com/secretsmanager/latest/userguide/monitoring-cloudtrail.html).

**Required permissions:** `secretsmanager:ListSecrets`. For more
information, see [IAM policy actions for Secrets
Manager](https://docs.aws.amazon.com/secretsmanager/latest/userguide/reference_iam-permissions.html#reference_iam-permissions_actions)
and [Authentication and access control in Secrets
Manager](https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access.html).

### Usage

    secretsmanager_list_secrets(IncludePlannedDeletion, MaxResults,
      NextToken, Filters, SortOrder)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="secretsmanager_list_secrets_:_IncludePlannedDeletion">IncludePlannedDeletion</code></td>
<td><p>Specifies whether to include secrets scheduled for deletion. By
default, secrets scheduled for deletion aren't included.</p></td>
</tr>
<tr class="even">
<td><code
id="secretsmanager_list_secrets_:_MaxResults">MaxResults</code></td>
<td><p>The number of results to include in the response.</p>
<p>If there are more results available, in the response, Secrets Manager
includes <code>NextToken</code>. To get the next results, call
<code>list_secrets</code> again with the value from
<code>NextToken</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="secretsmanager_list_secrets_:_NextToken">NextToken</code></td>
<td><p>A token that indicates where the output should continue from, if
a previous call did not show all results. To get the next results, call
<code>list_secrets</code> again with this value.</p></td>
</tr>
<tr class="even">
<td><code id="secretsmanager_list_secrets_:_Filters">Filters</code></td>
<td><p>The filters to apply to the list of secrets.</p></td>
</tr>
<tr class="odd">
<td><code
id="secretsmanager_list_secrets_:_SortOrder">SortOrder</code></td>
<td><p>Secrets are listed by <code>CreatedDate</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      SecretList = list(
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
          SecretVersionsToStages = list(
            list(
              "string"
            )
          ),
          OwningService = "string",
          CreatedDate = as.POSIXct(
            "2015-01-01"
          ),
          PrimaryRegion = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_secrets(
      IncludePlannedDeletion = TRUE|FALSE,
      MaxResults = 123,
      NextToken = "string",
      Filters = list(
        list(
          Key = "description"|"name"|"tag-key"|"tag-value"|"primary-region"|"owning-service"|"all",
          Values = list(
            "string"
          )
        )
      ),
      SortOrder = "asc"|"desc"
    )

### Examples

    ## Not run: 
    # The following example shows how to list all of the secrets in your
    # account.
    svc$list_secrets()

    ## End(Not run)
