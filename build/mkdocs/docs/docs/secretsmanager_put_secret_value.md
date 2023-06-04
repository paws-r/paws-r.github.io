<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>secretsmanager_put_secret_value</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new version with a new encrypted secret value and attaches it to the secret

### Description

Creates a new version with a new encrypted secret value and attaches it
to the secret. The version can contain a new `SecretString` value or a
new `SecretBinary` value.

We recommend you avoid calling `put_secret_value` at a sustained rate of
more than once every 10 minutes. When you update the secret value,
Secrets Manager creates a new version of the secret. Secrets Manager
removes outdated versions when there are more than 100, but it does not
remove versions created less than 24 hours ago. If you call
`put_secret_value` more than once every 10 minutes, you create more
versions than Secrets Manager removes, and you will reach the quota for
secret versions.

You can specify the staging labels to attach to the new version in
`VersionStages`. If you don't include `VersionStages`, then Secrets
Manager automatically moves the staging label `AWSCURRENT` to this
version. If this operation creates the first version for the secret,
then Secrets Manager automatically attaches the staging label
`AWSCURRENT` to it. If this operation moves the staging label
`AWSCURRENT` from another version to this version, then Secrets Manager
also automatically moves the staging label `AWSPREVIOUS` to the version
that `AWSCURRENT` was removed from.

This operation is idempotent. If you call this operation with a
`ClientRequestToken` that matches an existing version's VersionId, and
you specify the same secret data, the operation succeeds but does
nothing. However, if the secret data is different, then the operation
fails because you can't modify an existing version; you can only create
new ones.

Secrets Manager generates a CloudTrail log entry when you call this
action. Do not include sensitive information in request parameters
except `SecretBinary` or `SecretString` because it might be logged. For
more information, see [Logging Secrets Manager events with
CloudTrail](https://docs.aws.amazon.com/secretsmanager/latest/userguide/monitoring-cloudtrail.html).

**Required permissions:** `secretsmanager:PutSecretValue`. For more
information, see [IAM policy actions for Secrets
Manager](https://docs.aws.amazon.com/secretsmanager/latest/userguide/reference_iam-permissions.html#reference_iam-permissions_actions)
and [Authentication and access control in Secrets
Manager](https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access.html).

### Usage

    secretsmanager_put_secret_value(SecretId, ClientRequestToken,
      SecretBinary, SecretString, VersionStages)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="secretsmanager_put_secret_value_:_SecretId">SecretId</code></td>
<td><p>[required] The ARN or name of the secret to add a new version
to.</p>
<p>For an ARN, we recommend that you specify a complete ARN rather than
a partial ARN. See <a
href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/troubleshoot.html#ARN_secretnamehyphen">Finding
a secret from a partial ARN</a>.</p>
<p>If the secret doesn't already exist, use <code>create_secret</code>
instead.</p></td>
</tr>
<tr class="even">
<td><code
id="secretsmanager_put_secret_value_:_ClientRequestToken">ClientRequestToken</code></td>
<td><p>A unique identifier for the new version of the secret.</p>
<p>If you use the Amazon Web Services CLI or one of the Amazon Web
Services SDKs to call this operation, then you can leave this parameter
empty because they generate a random UUID for you. If you don't use the
SDK and instead generate a raw HTTP request to the Secrets Manager
service endpoint, then you must generate a
<code>ClientRequestToken</code> yourself for new versions and include
that value in the request.</p>
<p>This value helps ensure idempotency. Secrets Manager uses this value
to prevent the accidental creation of duplicate versions if there are
failures and retries during the Lambda rotation function processing. We
recommend that you generate a <a
href="https://en.wikipedia.org/wiki/Universally_unique_identifier">UUID-type</a>
value to ensure uniqueness within the specified secret.</p>
<ul>
<li><p>If the <code>ClientRequestToken</code> value isn't already
associated with a version of the secret then a new version of the secret
is created.</p></li>
<li><p>If a version with this value already exists and that version's
<code>SecretString</code> or <code>SecretBinary</code> values are the
same as those in the request then the request is ignored. The operation
is idempotent.</p></li>
<li><p>If a version with this value already exists and the version of
the <code>SecretString</code> and <code>SecretBinary</code> values are
different from those in the request, then the request fails because you
can't modify a secret version. You can only create new versions to store
new secret values.</p></li>
</ul>
<p>This value becomes the <code>VersionId</code> of the new
version.</p></td>
</tr>
<tr class="odd">
<td><code
id="secretsmanager_put_secret_value_:_SecretBinary">SecretBinary</code></td>
<td><p>The binary data to encrypt and store in the new version of the
secret. To use this parameter in the command-line tools, we recommend
that you store your binary data in a file and then pass the contents of
the file as a parameter.</p>
<p>You must include <code>SecretBinary</code> or
<code>SecretString</code>, but not both.</p>
<p>You can't access this value from the Secrets Manager
console.</p></td>
</tr>
<tr class="even">
<td><code
id="secretsmanager_put_secret_value_:_SecretString">SecretString</code></td>
<td><p>The text to encrypt and store in the new version of the
secret.</p>
<p>You must include <code>SecretBinary</code> or
<code>SecretString</code>, but not both.</p>
<p>We recommend you create the secret string as JSON key/value pairs, as
shown in the example.</p></td>
</tr>
<tr class="odd">
<td><code
id="secretsmanager_put_secret_value_:_VersionStages">VersionStages</code></td>
<td><p>A list of staging labels to attach to this version of the secret.
Secrets Manager uses staging labels to track versions of a secret
through the rotation process.</p>
<p>If you specify a staging label that's already associated with a
different version of the same secret, then Secrets Manager removes the
label from the other version and attaches it to this version. If you
specify <code>AWSCURRENT</code>, and it is already attached to another
version, then Secrets Manager also moves the staging label
<code>AWSPREVIOUS</code> to the version that <code>AWSCURRENT</code> was
removed from.</p>
<p>If you don't include <code>VersionStages</code>, then Secrets Manager
automatically moves the staging label <code>AWSCURRENT</code> to this
version.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ARN = "string",
      Name = "string",
      VersionId = "string",
      VersionStages = list(
        "string"
      )
    )

### Request syntax

    svc$put_secret_value(
      SecretId = "string",
      ClientRequestToken = "string",
      SecretBinary = raw,
      SecretString = "string",
      VersionStages = list(
        "string"
      )
    )

### Examples

    ## Not run: 
    # The following example shows how to create a new version of the secret.
    # Alternatively, you can use the update-secret command.
    svc$put_secret_value(
      ClientRequestToken = "EXAMPLE2-90ab-cdef-fedc-ba987EXAMPLE",
      SecretId = "MyTestDatabaseSecret",
      SecretString = "{"username":"david","password":"EXAMPLE-PASSWORD"}"
    )

    ## End(Not run)
