<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>secretsmanager_get_secret_value</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the contents of the encrypted fields SecretString or SecretBinary from the specified version of a secret, whichever contains content

### Description

Retrieves the contents of the encrypted fields `SecretString` or
`SecretBinary` from the specified version of a secret, whichever
contains content.

We recommend that you cache your secret values by using client-side
caching. Caching secrets improves speed and reduces your costs. For more
information, see [Cache secrets for your
applications](https://docs.aws.amazon.com/secretsmanager/latest/userguide/retrieving-secrets.html).

To retrieve the previous version of a secret, use `VersionStage` and
specify AWSPREVIOUS. To revert to the previous version of a secret, call
`update_secret_version_stage`.

Secrets Manager generates a CloudTrail log entry when you call this
action. Do not include sensitive information in request parameters
because it might be logged. For more information, see [Logging Secrets
Manager events with
CloudTrail](https://docs.aws.amazon.com/secretsmanager/latest/userguide/monitoring-cloudtrail.html).

**Required permissions:** `secretsmanager:GetSecretValue`. If the secret
is encrypted using a customer-managed key instead of the Amazon Web
Services managed key `aws/secretsmanager`, then you also need
`kms:Decrypt` permissions for that key. For more information, see [IAM
policy actions for Secrets
Manager](https://docs.aws.amazon.com/secretsmanager/latest/userguide/reference_iam-permissions.html#reference_iam-permissions_actions)
and [Authentication and access control in Secrets
Manager](https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access.html).

### Usage

    secretsmanager_get_secret_value(SecretId, VersionId, VersionStage)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="secretsmanager_get_secret_value_:_SecretId">SecretId</code></td>
<td><p>[required] The ARN or name of the secret to retrieve.</p>
<p>For an ARN, we recommend that you specify a complete ARN rather than
a partial ARN. See <a
href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/troubleshoot.html#ARN_secretnamehyphen">Finding
a secret from a partial ARN</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="secretsmanager_get_secret_value_:_VersionId">VersionId</code></td>
<td><p>The unique identifier of the version of the secret to retrieve.
If you include both this parameter and <code>VersionStage</code>, the
two parameters must refer to the same secret version. If you don't
specify either a <code>VersionStage</code> or <code>VersionId</code>,
then Secrets Manager returns the <code>AWSCURRENT</code> version.</p>
<p>This value is typically a <a
href="https://en.wikipedia.org/wiki/Universally_unique_identifier">UUID-type</a>
value with 32 hexadecimal digits.</p></td>
</tr>
<tr class="odd">
<td><code
id="secretsmanager_get_secret_value_:_VersionStage">VersionStage</code></td>
<td><p>The staging label of the version of the secret to retrieve.</p>
<p>Secrets Manager uses staging labels to keep track of different
versions during the rotation process. If you include both this parameter
and <code>VersionId</code>, the two parameters must refer to the same
secret version. If you don't specify either a <code>VersionStage</code>
or <code>VersionId</code>, Secrets Manager returns the
<code>AWSCURRENT</code> version.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ARN = "string",
      Name = "string",
      VersionId = "string",
      SecretBinary = raw,
      SecretString = "string",
      VersionStages = list(
        "string"
      ),
      CreatedDate = as.POSIXct(
        "2015-01-01"
      )
    )

### Request syntax

    svc$get_secret_value(
      SecretId = "string",
      VersionId = "string",
      VersionStage = "string"
    )

### Examples

    ## Not run: 
    # The following example shows how to retrieve a secret string value.
    svc$get_secret_value(
      SecretId = "MyTestDatabaseSecret"
    )

    ## End(Not run)
