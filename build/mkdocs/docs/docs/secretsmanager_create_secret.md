<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>secretsmanager_create_secret</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new secret

### Description

Creates a new secret. A *secret* can be a password, a set of credentials
such as a user name and password, an OAuth token, or other secret
information that you store in an encrypted form in Secrets Manager. The
secret also includes the connection information to access a database or
other service, which Secrets Manager doesn't encrypt. A secret in
Secrets Manager consists of both the protected secret data and the
important information needed to manage the secret.

For secrets that use *managed rotation*, you need to create the secret
through the managing service. For more information, see [Secrets Manager
secrets managed by other Amazon Web Services
services](https://docs.aws.amazon.com/secretsmanager/latest/userguide/service-linked-secrets.html).

For information about creating a secret in the console, see [Create a
secret](https://docs.aws.amazon.com/secretsmanager/latest/userguide/managing-secrets.html).

To create a secret, you can provide the secret value to be encrypted in
either the `SecretString` parameter or the `SecretBinary` parameter, but
not both. If you include `SecretString` or `SecretBinary` then Secrets
Manager creates an initial secret version and automatically attaches the
staging label `AWSCURRENT` to it.

For database credentials you want to rotate, for Secrets Manager to be
able to rotate the secret, you must make sure the JSON you store in the
`SecretString` matches the [JSON structure of a database
secret](https://docs.aws.amazon.com/secretsmanager/latest/userguide/reference_secret_json_structure.html).

If you don't specify an KMS encryption key, Secrets Manager uses the
Amazon Web Services managed key `aws/secretsmanager`. If this key
doesn't already exist in your account, then Secrets Manager creates it
for you automatically. All users and roles in the Amazon Web Services
account automatically have access to use `aws/secretsmanager`. Creating
`aws/secretsmanager` can result in a one-time significant delay in
returning the result.

If the secret is in a different Amazon Web Services account from the
credentials calling the API, then you can't use `aws/secretsmanager` to
encrypt the secret, and you must create and use a customer managed KMS
key.

Secrets Manager generates a CloudTrail log entry when you call this
action. Do not include sensitive information in request parameters
except `SecretBinary` or `SecretString` because it might be logged. For
more information, see [Logging Secrets Manager events with
CloudTrail](https://docs.aws.amazon.com/secretsmanager/latest/userguide/monitoring-cloudtrail.html).

**Required permissions:** `secretsmanager:CreateSecret`. If you include
tags in the secret, you also need `secretsmanager:TagResource`. For more
information, see [IAM policy actions for Secrets
Manager](https://docs.aws.amazon.com/secretsmanager/latest/userguide/reference_iam-permissions.html#reference_iam-permissions_actions)
and [Authentication and access control in Secrets
Manager](https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access.html).

To encrypt the secret with a KMS key other than `aws/secretsmanager`,
you need `kms:GenerateDataKey` and `kms:Decrypt` permission to the key.

### Usage

    secretsmanager_create_secret(Name, ClientRequestToken, Description,
      KmsKeyId, SecretBinary, SecretString, Tags, AddReplicaRegions,
      ForceOverwriteReplicaSecret)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="secretsmanager_create_secret_:_Name">Name</code></td>
<td><p>[required] The name of the new secret.</p>
<p>The secret name can contain ASCII letters, numbers, and the following
characters: /_+=.@-</p>
<p>Do not end your secret name with a hyphen followed by six characters.
If you do so, you risk confusion and unexpected results when searching
for a secret by partial ARN. Secrets Manager automatically adds a hyphen
and six random characters after the secret name at the end of the
ARN.</p></td>
</tr>
<tr class="even">
<td><code
id="secretsmanager_create_secret_:_ClientRequestToken">ClientRequestToken</code></td>
<td><p>If you include <code>SecretString</code> or
<code>SecretBinary</code>, then Secrets Manager creates an initial
version for the secret, and this parameter specifies the unique
identifier for the new version.</p>
<p>If you use the Amazon Web Services CLI or one of the Amazon Web
Services SDKs to call this operation, then you can leave this parameter
empty. The CLI or SDK generates a random UUID for you and includes it as
the value for this parameter in the request. If you don't use the SDK
and instead generate a raw HTTP request to the Secrets Manager service
endpoint, then you must generate a <code>ClientRequestToken</code>
yourself for the new version and include the value in the request.</p>
<p>This value helps ensure idempotency. Secrets Manager uses this value
to prevent the accidental creation of duplicate versions if there are
failures and retries during a rotation. We recommend that you generate a
<a
href="https://en.wikipedia.org/wiki/Universally_unique_identifier">UUID-type</a>
value to ensure uniqueness of your versions within the specified
secret.</p>
<ul>
<li><p>If the <code>ClientRequestToken</code> value isn't already
associated with a version of the secret then a new version of the secret
is created.</p></li>
<li><p>If a version with this value already exists and the version
<code>SecretString</code> and <code>SecretBinary</code> values are the
same as those in the request, then the request is ignored.</p></li>
<li><p>If a version with this value already exists and that version's
<code>SecretString</code> and <code>SecretBinary</code> values are
different from those in the request, then the request fails because you
cannot modify an existing version. Instead, use
<code>put_secret_value</code> to create a new version.</p></li>
</ul>
<p>This value becomes the <code>VersionId</code> of the new
version.</p></td>
</tr>
<tr class="odd">
<td><code
id="secretsmanager_create_secret_:_Description">Description</code></td>
<td><p>The description of the secret.</p></td>
</tr>
<tr class="even">
<td><code
id="secretsmanager_create_secret_:_KmsKeyId">KmsKeyId</code></td>
<td><p>The ARN, key ID, or alias of the KMS key that Secrets Manager
uses to encrypt the secret value in the secret. An alias is always
prefixed by <code style="white-space: pre;">⁠alias/⁠</code>, for example
<code>alias/aws/secretsmanager</code>. For more information, see <a
href="https://docs.aws.amazon.com/kms/latest/developerguide/alias-about.html">About
aliases</a>.</p>
<p>To use a KMS key in a different account, use the key ARN or the alias
ARN.</p>
<p>If you don't specify this value, then Secrets Manager uses the key
<code>aws/secretsmanager</code>. If that key doesn't yet exist, then
Secrets Manager creates it for you automatically the first time it
encrypts the secret value.</p>
<p>If the secret is in a different Amazon Web Services account from the
credentials calling the API, then you can't use
<code>aws/secretsmanager</code> to encrypt the secret, and you must
create and use a customer managed KMS key.</p></td>
</tr>
<tr class="odd">
<td><code
id="secretsmanager_create_secret_:_SecretBinary">SecretBinary</code></td>
<td><p>The binary data to encrypt and store in the new version of the
secret. We recommend that you store your binary data in a file and then
pass the contents of the file as a parameter.</p>
<p>Either <code>SecretString</code> or <code>SecretBinary</code> must
have a value, but not both.</p>
<p>This parameter is not available in the Secrets Manager
console.</p></td>
</tr>
<tr class="even">
<td><code
id="secretsmanager_create_secret_:_SecretString">SecretString</code></td>
<td><p>The text data to encrypt and store in this new version of the
secret. We recommend you use a JSON structure of key/value pairs for
your secret value.</p>
<p>Either <code>SecretString</code> or <code>SecretBinary</code> must
have a value, but not both.</p>
<p>If you create a secret by using the Secrets Manager console then
Secrets Manager puts the protected secret text in only the
<code>SecretString</code> parameter. The Secrets Manager console stores
the information as a JSON structure of key/value pairs that a Lambda
rotation function can parse.</p></td>
</tr>
<tr class="odd">
<td><code id="secretsmanager_create_secret_:_Tags">Tags</code></td>
<td><p>A list of tags to attach to the secret. Each tag is a key and
value pair of strings in a JSON text string, for example:</p>
<p><code
style="white-space: pre;">⁠[{"Key":"CostCenter","Value":"12345"},{"Key":"environment","Value":"production"}]⁠</code></p>
<p>Secrets Manager tag key names are case sensitive. A tag with the key
"ABC" is a different tag from one with key "abc".</p>
<p>If you check tags in permissions policies as part of your security
strategy, then adding or removing a tag can change permissions. If the
completion of this operation would result in you losing your permissions
for this secret, then Secrets Manager blocks the operation and returns
an <code style="white-space: pre;">⁠Access Denied⁠</code> error. For more
information, see <a
href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access_examples.html#tag-secrets-abac">Control
access to secrets using tags</a> and <a
href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access_examples.html#auth-and-access_tags2">Limit
access to identities with tags that match secrets' tags</a>.</p>
<p>For information about how to format a JSON parameter for the various
command line tool environments, see <a
href="https://docs.aws.amazon.com/cli/latest/userguide/cli-usage-parameters.html#cli-using-param-json">Using
JSON for Parameters</a>. If your command-line tool or SDK requires
quotation marks around the parameter, you should use single quotes to
avoid confusion with the double quotes required in the JSON text.</p>
<p>The following restrictions apply to tags:</p>
<ul>
<li><p>Maximum number of tags per secret: 50</p></li>
<li><p>Maximum key length: 127 Unicode characters in UTF-8</p></li>
<li><p>Maximum value length: 255 Unicode characters in UTF-8</p></li>
<li><p>Tag keys and values are case sensitive.</p></li>
<li><p>Do not use the <code style="white-space: pre;">⁠aws:⁠</code> prefix
in your tag names or values because Amazon Web Services reserves it for
Amazon Web Services use. You can't edit or delete tag names or values
with this prefix. Tags with this prefix do not count against your tags
per secret limit.</p></li>
<li><p>If you use your tagging schema across multiple services and
resources, other services might have restrictions on allowed characters.
Generally allowed characters: letters, spaces, and numbers representable
in UTF-8, plus the following special characters: + - = . _ : /
@.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="secretsmanager_create_secret_:_AddReplicaRegions">AddReplicaRegions</code></td>
<td><p>A list of Regions and KMS keys to replicate secrets.</p></td>
</tr>
<tr class="odd">
<td><code
id="secretsmanager_create_secret_:_ForceOverwriteReplicaSecret">ForceOverwriteReplicaSecret</code></td>
<td><p>Specifies whether to overwrite a secret with the same name in the
destination Region. By default, secrets aren't overwritten.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ARN = "string",
      Name = "string",
      VersionId = "string",
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

    svc$create_secret(
      Name = "string",
      ClientRequestToken = "string",
      Description = "string",
      KmsKeyId = "string",
      SecretBinary = raw,
      SecretString = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      ),
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
    # The following example shows how to create a secret. The credentials
    # stored in the encrypted secret value are retrieved from a file on disk
    # named mycreds.json.
    svc$create_secret(
      ClientRequestToken = "EXAMPLE1-90ab-cdef-fedc-ba987SECRET1",
      Description = "My test database secret created with the CLI",
      Name = "MyTestDatabaseSecret",
      SecretString = "{"username":"david","password":"EXAMPLE-PASSWORD"}"
    )

    ## End(Not run)
