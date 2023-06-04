<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>secretsmanager_rotate_secret</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Configures and starts the asynchronous process of rotating the secret

### Description

Configures and starts the asynchronous process of rotating the secret.
For information about rotation, see [Rotate
secrets](https://docs.aws.amazon.com/secretsmanager/latest/userguide/rotating-secrets.html)
in the *Secrets Manager User Guide*. If you include the configuration
parameters, the operation sets the values for the secret and then
immediately starts a rotation. If you don't include the configuration
parameters, the operation starts a rotation with the values already
stored in the secret.

When rotation is successful, the `AWSPENDING` staging label might be
attached to the same version as the `AWSCURRENT` version, or it might
not be attached to any version. If the `AWSPENDING` staging label is
present but not attached to the same version as `AWSCURRENT`, then any
later invocation of `rotate_secret` assumes that a previous rotation
request is still in progress and returns an error. When rotation is
unsuccessful, the `AWSPENDING` staging label might be attached to an
empty secret version. For more information, see [Troubleshoot
rotation](https://docs.aws.amazon.com/secretsmanager/latest/userguide/troubleshoot_rotation.html)
in the *Secrets Manager User Guide*.

Secrets Manager generates a CloudTrail log entry when you call this
action. Do not include sensitive information in request parameters
because it might be logged. For more information, see [Logging Secrets
Manager events with
CloudTrail](https://docs.aws.amazon.com/secretsmanager/latest/userguide/monitoring-cloudtrail.html).

**Required permissions:** `secretsmanager:RotateSecret`. For more
information, see [IAM policy actions for Secrets
Manager](https://docs.aws.amazon.com/secretsmanager/latest/userguide/reference_iam-permissions.html#reference_iam-permissions_actions)
and [Authentication and access control in Secrets
Manager](https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access.html).
You also need `lambda:InvokeFunction` permissions on the rotation
function. For more information, see [Permissions for
rotation](https://docs.aws.amazon.com/secretsmanager/latest/userguide/rotating-secrets-required-permissions-function.html).

### Usage

    secretsmanager_rotate_secret(SecretId, ClientRequestToken,
      RotationLambdaARN, RotationRules, RotateImmediately)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="secretsmanager_rotate_secret_:_SecretId">SecretId</code></td>
<td><p>[required] The ARN or name of the secret to rotate.</p>
<p>For an ARN, we recommend that you specify a complete ARN rather than
a partial ARN. See <a
href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/troubleshoot.html#ARN_secretnamehyphen">Finding
a secret from a partial ARN</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="secretsmanager_rotate_secret_:_ClientRequestToken">ClientRequestToken</code></td>
<td><p>A unique identifier for the new version of the secret that helps
ensure idempotency. Secrets Manager uses this value to prevent the
accidental creation of duplicate versions if there are failures and
retries during rotation. This value becomes the <code>VersionId</code>
of the new version.</p>
<p>If you use the Amazon Web Services CLI or one of the Amazon Web
Services SDK to call this operation, then you can leave this parameter
empty. The CLI or SDK generates a random UUID for you and includes that
in the request for this parameter. If you don't use the SDK and instead
generate a raw HTTP request to the Secrets Manager service endpoint,
then you must generate a <code>ClientRequestToken</code> yourself for
new versions and include that value in the request.</p>
<p>You only need to specify this value if you implement your own retry
logic and you want to ensure that Secrets Manager doesn't attempt to
create a secret version twice. We recommend that you generate a <a
href="https://en.wikipedia.org/wiki/Universally_unique_identifier">UUID-type</a>
value to ensure uniqueness within the specified secret.</p></td>
</tr>
<tr class="odd">
<td><code
id="secretsmanager_rotate_secret_:_RotationLambdaARN">RotationLambdaARN</code></td>
<td><p>For secrets that use a Lambda rotation function to rotate, the
ARN of the Lambda rotation function.</p>
<p>For secrets that use <em>managed rotation</em>, omit this field. For
more information, see <a
href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/rotate-secrets_managed.html">Managed
rotation</a> in the <em>Secrets Manager User Guide</em>.</p></td>
</tr>
<tr class="even">
<td><code
id="secretsmanager_rotate_secret_:_RotationRules">RotationRules</code></td>
<td><p>A structure that defines the rotation configuration for this
secret.</p></td>
</tr>
<tr class="odd">
<td><code
id="secretsmanager_rotate_secret_:_RotateImmediately">RotateImmediately</code></td>
<td><p>Specifies whether to rotate the secret immediately or wait until
the next scheduled rotation window. The rotation schedule is defined in
RotateSecretRequest$RotationRules.</p>
<p>For secrets that use a Lambda rotation function to rotate, if you
don't immediately rotate the secret, Secrets Manager tests the rotation
configuration by running the <a
href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/rotating-secrets.html#rotate-secrets_how"><code>testSecret</code>
step</a> of the Lambda rotation function. The test creates an
<code>AWSPENDING</code> version of the secret and then removes it.</p>
<p>By default, Secrets Manager rotates the secret immediately.</p></td>
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

    svc$rotate_secret(
      SecretId = "string",
      ClientRequestToken = "string",
      RotationLambdaARN = "string",
      RotationRules = list(
        AutomaticallyAfterDays = 123,
        Duration = "string",
        ScheduleExpression = "string"
      ),
      RotateImmediately = TRUE|FALSE
    )

### Examples

    ## Not run: 
    # The following example configures rotation for a secret using a cron
    # expression. The first rotation happens immediately after the changes are
    # stored in the secret. The rotation schedule is the first and 15th day of
    # every month. The rotation window begins at 4:00 PM UTC and ends at 6:00
    # PM.
    svc$rotate_secret(
      RotationLambdaARN = "arn:aws:lambda:us-west-2:123456789012:function:MyTes...",
      RotationRules = list(
        Duration = "2h",
        ScheduleExpression = "cron(0 16 1,15 * ? *)"
      ),
      SecretId = "MyTestDatabaseSecret"
    )

    # The following example requests an immediate invocation of the secret's
    # Lambda rotation function. It assumes that the specified secret already
    # has rotation configured. The rotation function runs asynchronously in
    # the background.
    svc$rotate_secret(
      SecretId = "MyTestDatabaseSecret"
    )

    ## End(Not run)
