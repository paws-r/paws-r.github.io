<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>secretsmanager_list_secret_version_ids</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the versions of a secret

### Description

Lists the versions of a secret. Secrets Manager uses staging labels to
indicate the different versions of a secret. For more information, see
[Secrets Manager concepts:
Versions](https://docs.aws.amazon.com/secretsmanager/latest/userguide/getting-started.html#term_version).

To list the secrets in the account, use `list_secrets`.

Secrets Manager generates a CloudTrail log entry when you call this
action. Do not include sensitive information in request parameters
because it might be logged. For more information, see [Logging Secrets
Manager events with
CloudTrail](https://docs.aws.amazon.com/secretsmanager/latest/userguide/monitoring-cloudtrail.html).

**Required permissions:** `secretsmanager:ListSecretVersionIds`. For
more information, see [IAM policy actions for Secrets
Manager](https://docs.aws.amazon.com/secretsmanager/latest/userguide/reference_iam-permissions.html#reference_iam-permissions_actions)
and [Authentication and access control in Secrets
Manager](https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access.html).

### Usage

    secretsmanager_list_secret_version_ids(SecretId, MaxResults, NextToken,
      IncludeDeprecated)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="secretsmanager_list_secret_version_ids_:_SecretId">SecretId</code></td>
<td><p>[required] The ARN or name of the secret whose versions you want
to list.</p>
<p>For an ARN, we recommend that you specify a complete ARN rather than
a partial ARN. See <a
href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/troubleshoot.html#ARN_secretnamehyphen">Finding
a secret from a partial ARN</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="secretsmanager_list_secret_version_ids_:_MaxResults">MaxResults</code></td>
<td><p>The number of results to include in the response.</p>
<p>If there are more results available, in the response, Secrets Manager
includes <code>NextToken</code>. To get the next results, call
<code>list_secret_version_ids</code> again with the value from
<code>NextToken</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="secretsmanager_list_secret_version_ids_:_NextToken">NextToken</code></td>
<td><p>A token that indicates where the output should continue from, if
a previous call did not show all results. To get the next results, call
<code>list_secret_version_ids</code> again with this value.</p></td>
</tr>
<tr class="even">
<td><code
id="secretsmanager_list_secret_version_ids_:_IncludeDeprecated">IncludeDeprecated</code></td>
<td><p>Specifies whether to include versions of secrets that don't have
any staging labels attached to them. Versions without staging labels are
considered deprecated and are subject to deletion by Secrets Manager. By
default, versions without staging labels aren't included.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Versions = list(
        list(
          VersionId = "string",
          VersionStages = list(
            "string"
          ),
          LastAccessedDate = as.POSIXct(
            "2015-01-01"
          ),
          CreatedDate = as.POSIXct(
            "2015-01-01"
          ),
          KmsKeyIds = list(
            "string"
          )
        )
      ),
      NextToken = "string",
      ARN = "string",
      Name = "string"
    )

### Request syntax

    svc$list_secret_version_ids(
      SecretId = "string",
      MaxResults = 123,
      NextToken = "string",
      IncludeDeprecated = TRUE|FALSE
    )

### Examples

    ## Not run: 
    # The following example shows how to retrieve a list of all of the
    # versions of a secret, including those without any staging labels.
    svc$list_secret_version_ids(
      IncludeDeprecated = TRUE,
      SecretId = "MyTestDatabaseSecret"
    )

    ## End(Not run)
