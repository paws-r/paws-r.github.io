<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>secretsmanager_validate_resource_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Validates that a resource policy does not grant a wide range of principals access to your secret

### Description

Validates that a resource policy does not grant a wide range of
principals access to your secret. A resource-based policy is optional
for secrets.

The API performs three checks when validating the policy:

-   Sends a call to
    [Zelkova](https://aws.amazon.com/blogs/security/protect-sensitive-data-in-the-cloud-with-automated-reasoning-zelkova/),
    an automated reasoning engine, to ensure your resource policy does
    not allow broad access to your secret, for example policies that use
    a wildcard for the principal.

-   Checks for correct syntax in a policy.

-   Verifies the policy does not lock out a caller.

Secrets Manager generates a CloudTrail log entry when you call this
action. Do not include sensitive information in request parameters
because it might be logged. For more information, see [Logging Secrets
Manager events with
CloudTrail](https://docs.aws.amazon.com/secretsmanager/latest/userguide/monitoring-cloudtrail.html).

**Required permissions:** `secretsmanager:ValidateResourcePolicy` and
`secretsmanager:PutResourcePolicy`. For more information, see [IAM
policy actions for Secrets
Manager](https://docs.aws.amazon.com/secretsmanager/latest/userguide/reference_iam-permissions.html#reference_iam-permissions_actions)
and [Authentication and access control in Secrets
Manager](https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access.html).

### Usage

    secretsmanager_validate_resource_policy(SecretId, ResourcePolicy)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="secretsmanager_validate_resource_policy_:_SecretId">SecretId</code></td>
<td><p>This field is reserved for internal use.</p></td>
</tr>
<tr class="even">
<td><code
id="secretsmanager_validate_resource_policy_:_ResourcePolicy">ResourcePolicy</code></td>
<td><p>[required] A JSON-formatted string that contains an Amazon Web
Services resource-based policy. The policy in the string identifies who
can access or manage this secret and its versions. For example policies,
see <a
href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access_examples.html">Permissions
policy examples</a>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      PolicyValidationPassed = TRUE|FALSE,
      ValidationErrors = list(
        list(
          CheckName = "string",
          ErrorMessage = "string"
        )
      )
    )

### Request syntax

    svc$validate_resource_policy(
      SecretId = "string",
      ResourcePolicy = "string"
    )

### Examples

    ## Not run: 
    # The following example shows how to validate a resource-based policy to a
    # secret.
    svc$validate_resource_policy(
      ResourcePolicy = "{\n\"Version\":\"2012-10-17\",\n\"Statement\":[{\n\"Effect\":\"A...",
      SecretId = "MyTestDatabaseSecret"
    )

    ## End(Not run)
