<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>secretsmanager_update_secret</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Modifies the details of a secret, including metadata and the secret value

### Description

Modifies the details of a secret, including metadata and the secret
value. To change the secret value, you can also use `put_secret_value`.

To change the rotation configuration of a secret, use `rotate_secret`
instead.

To change a secret so that it is managed by another service, you need to
recreate the secret in that service. See [Secrets Manager secrets
managed by other Amazon Web Services
services](https://docs.aws.amazon.com/secretsmanager/latest/userguide/service-linked-secrets.html).

We recommend you avoid calling `update_secret` at a sustained rate of
more than once every 10 minutes. When you call `update_secret` to update
the secret value, Secrets Manager creates a new version of the secret.
Secrets Manager removes outdated versions when there are more than 100,
but it does not remove versions created less than 24 hours ago. If you
update the secret value more than once every 10 minutes, you create more
versions than Secrets Manager removes, and you will reach the quota for
secret versions.

If you include `SecretString` or `SecretBinary` to create a new secret
version, Secrets Manager automatically moves the staging label
`AWSCURRENT` to the new version. Then it attaches the label
`AWSPREVIOUS` to the version that `AWSCURRENT` was removed from.

If you call this operation with a `ClientRequestToken` that matches an
existing version's `VersionId`, the operation results in an error. You
can't modify an existing version, you can only create a new version. To
remove a version, remove all staging labels from it. See
`update_secret_version_stage`.

Secrets Manager generates a CloudTrail log entry when you call this
action. Do not include sensitive information in request parameters
except `SecretBinary` or `SecretString` because it might be logged. For
more information, see [Logging Secrets Manager events with
CloudTrail](https://docs.aws.amazon.com/secretsmanager/latest/userguide/monitoring-cloudtrail.html).

**Required permissions:** `secretsmanager:UpdateSecret`. For more
information, see [IAM policy actions for Secrets
Manager](https://docs.aws.amazon.com/secretsmanager/latest/userguide/reference_iam-permissions.html#reference_iam-permissions_actions)
and [Authentication and access control in Secrets
Manager](https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access.html).
If you use a customer managed key, you must also have
`kms:GenerateDataKey` and `kms:Decrypt` permissions on the key. For more
information, see [Secret encryption and
decryption](https://docs.aws.amazon.com/secretsmanager/latest/userguide/security-encryption.html).

### Usage

    secretsmanager_update_secret(SecretId, ClientRequestToken, Description,
      KmsKeyId, SecretBinary, SecretString)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="secretsmanager_update_secret_:_SecretId">SecretId</code></td>
<td><p>[required] The ARN or name of the secret.</p>
<p>For an ARN, we recommend that you specify a complete ARN rather than
a partial ARN. See <a
href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/troubleshoot.html#ARN_secretnamehyphen">Finding
a secret from a partial ARN</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="secretsmanager_update_secret_:_ClientRequestToken">ClientRequestToken</code></td>
<td><p>If you include <code>SecretString</code> or
<code>SecretBinary</code>, then Secrets Manager creates a new version
for the secret, and this parameter specifies the unique identifier for
the new version.</p>
<p>If you use the Amazon Web Services CLI or one of the Amazon Web
Services SDKs to call this operation, then you can leave this parameter
empty. The CLI or SDK generates a random UUID for you and includes it as
the value for this parameter in the request. If you don't use the SDK
and instead generate a raw HTTP request to the Secrets Manager service
endpoint, then you must generate a <code>ClientRequestToken</code>
yourself for the new version and include the value in the request.</p>
<p>This value becomes the <code>VersionId</code> of the new
version.</p></td>
</tr>
<tr class="odd">
<td><code
id="secretsmanager_update_secret_:_Description">Description</code></td>
<td><p>The description of the secret.</p></td>
</tr>
<tr class="even">
<td><code
id="secretsmanager_update_secret_:_KmsKeyId">KmsKeyId</code></td>
<td><p>The ARN, key ID, or alias of the KMS key that Secrets Manager
uses to encrypt new secret versions as well as any existing versions
with the staging labels <code>AWSCURRENT</code>,
<code>AWSPENDING</code>, or <code>AWSPREVIOUS</code>. For more
information about versions and staging labels, see <a
href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/getting-started.html#term_version">Concepts:
Version</a>.</p>
<p>A key alias is always prefixed by <code
style="white-space: pre;">⁠alias/⁠</code>, for example
<code>alias/aws/secretsmanager</code>. For more information, see <a
href="https://docs.aws.amazon.com/kms/latest/developerguide/alias-about.html">About
aliases</a>.</p>
<p>If you set this to an empty string, Secrets Manager uses the Amazon
Web Services managed key <code>aws/secretsmanager</code>. If this key
doesn't already exist in your account, then Secrets Manager creates it
for you automatically. All users and roles in the Amazon Web Services
account automatically have access to use
<code>aws/secretsmanager</code>. Creating
<code>aws/secretsmanager</code> can result in a one-time significant
delay in returning the result.</p>
<p>You can only use the Amazon Web Services managed key
<code>aws/secretsmanager</code> if you call this operation using
credentials from the same Amazon Web Services account that owns the
secret. If the secret is in a different account, then you must use a
customer managed key and provide the ARN of that KMS key in this field.
The user making the call must have permissions to both the secret and
the KMS key in their respective accounts.</p></td>
</tr>
<tr class="odd">
<td><code
id="secretsmanager_update_secret_:_SecretBinary">SecretBinary</code></td>
<td><p>The binary data to encrypt and store in the new version of the
secret. We recommend that you store your binary data in a file and then
pass the contents of the file as a parameter.</p>
<p>Either <code>SecretBinary</code> or <code>SecretString</code> must
have a value, but not both.</p>
<p>You can't access this parameter in the Secrets Manager
console.</p></td>
</tr>
<tr class="even">
<td><code
id="secretsmanager_update_secret_:_SecretString">SecretString</code></td>
<td><p>The text data to encrypt and store in the new version of the
secret. We recommend you use a JSON structure of key/value pairs for
your secret value.</p>
<p>Either <code>SecretBinary</code> or <code>SecretString</code> must
have a value, but not both.</p></td>
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

    svc$update_secret(
      SecretId = "string",
      ClientRequestToken = "string",
      Description = "string",
      KmsKeyId = "string",
      SecretBinary = raw,
      SecretString = "string"
    )

### Examples

    ## Not run: 
    # The following example shows how to modify the description of a secret.
    svc$update_secret(
      ClientRequestToken = "EXAMPLE1-90ab-cdef-fedc-ba987EXAMPLE",
      Description = "This is a new description for the secret.",
      SecretId = "MyTestDatabaseSecret"
    )

    # This example shows how to update the KMS customer managed key (CMK) used
    # to encrypt the secret value. The KMS CMK must be in the same region as
    # the secret.
    svc$update_secret(
      KmsKeyId = "arn:aws:kms:us-west-2:123456789012:key/EXAMPLE2-90ab-cdef-fedc-ba987EXAMPLE",
      SecretId = "MyTestDatabaseSecret"
    )

    # The following example shows how to create a new version of the secret by
    # updating the SecretString field. Alternatively, you can use the
    # put-secret-value operation.
    svc$update_secret(
      SecretId = "MyTestDatabaseSecret",
      SecretString = "{JSON STRING WITH CREDENTIALS}"
    )

    ## End(Not run)
