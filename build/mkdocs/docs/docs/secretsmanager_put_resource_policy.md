<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>secretsmanager_put_resource_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Attaches a resource-based permission policy to a secret

### Description

Attaches a resource-based permission policy to a secret. A
resource-based policy is optional. For more information, see
[Authentication and access control for Secrets
Manager](https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access.html)

For information about attaching a policy in the console, see [Attach a
permissions policy to a
secret](https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access_resource-policies.html).

Secrets Manager generates a CloudTrail log entry when you call this
action. Do not include sensitive information in request parameters
because it might be logged. For more information, see [Logging Secrets
Manager events with
CloudTrail](https://docs.aws.amazon.com/secretsmanager/latest/userguide/monitoring-cloudtrail.html).

**Required permissions:** `secretsmanager:PutResourcePolicy`. For more
information, see [IAM policy actions for Secrets
Manager](https://docs.aws.amazon.com/secretsmanager/latest/userguide/reference_iam-permissions.html#reference_iam-permissions_actions)
and [Authentication and access control in Secrets
Manager](https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access.html).

### Usage

    secretsmanager_put_resource_policy(SecretId, ResourcePolicy,
      BlockPublicPolicy)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="secretsmanager_put_resource_policy_:_SecretId">SecretId</code></td>
<td><p>[required] The ARN or name of the secret to attach the
resource-based policy.</p>
<p>For an ARN, we recommend that you specify a complete ARN rather than
a partial ARN. See <a
href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/troubleshoot.html#ARN_secretnamehyphen">Finding
a secret from a partial ARN</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="secretsmanager_put_resource_policy_:_ResourcePolicy">ResourcePolicy</code></td>
<td><p>[required] A JSON-formatted string for an Amazon Web Services
resource-based policy. For example policies, see <a
href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access_examples.html">Permissions
policy examples</a>.</p></td>
</tr>
<tr class="odd">
<td><code
id="secretsmanager_put_resource_policy_:_BlockPublicPolicy">BlockPublicPolicy</code></td>
<td><p>Specifies whether to block resource-based policies that allow
broad access to the secret, for example those that use a wildcard for
the principal. By default, public policies aren't blocked.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ARN = "string",
      Name = "string"
    )

### Request syntax

    svc$put_resource_policy(
      SecretId = "string",
      ResourcePolicy = "string",
      BlockPublicPolicy = TRUE|FALSE
    )

### Examples

    ## Not run: 
    # The following example shows how to add a resource-based policy to a
    # secret.
    svc$put_resource_policy(
      ResourcePolicy = "{\n\"Version\":\"2012-10-17\",\n\"Statement\":[{\n\"Effect\":\"A...",
      SecretId = "MyTestDatabaseSecret"
    )

    ## End(Not run)
