<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>secretsmanager_untag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes specific tags from a secret

### Description

Removes specific tags from a secret.

This operation is idempotent. If a requested tag is not attached to the
secret, no error is returned and the secret metadata is unchanged.

If you use tags as part of your security strategy, then removing a tag
can change permissions. If successfully completing this operation would
result in you losing your permissions for this secret, then the
operation is blocked and returns an Access Denied error.

Secrets Manager generates a CloudTrail log entry when you call this
action. Do not include sensitive information in request parameters
because it might be logged. For more information, see [Logging Secrets
Manager events with
CloudTrail](https://docs.aws.amazon.com/secretsmanager/latest/userguide/monitoring-cloudtrail.html).

**Required permissions:** `secretsmanager:UntagResource`. For more
information, see [IAM policy actions for Secrets
Manager](https://docs.aws.amazon.com/secretsmanager/latest/userguide/reference_iam-permissions.html#reference_iam-permissions_actions)
and [Authentication and access control in Secrets
Manager](https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access.html).

### Usage

    secretsmanager_untag_resource(SecretId, TagKeys)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="secretsmanager_untag_resource_:_SecretId">SecretId</code></td>
<td><p>[required] The ARN or name of the secret.</p>
<p>For an ARN, we recommend that you specify a complete ARN rather than
a partial ARN. See <a
href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/troubleshoot.html#ARN_secretnamehyphen">Finding
a secret from a partial ARN</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="secretsmanager_untag_resource_:_TagKeys">TagKeys</code></td>
<td><p>[required] A list of tag key names to remove from the secret. You
don't specify the value. Both the key and its associated value are
removed.</p>
<p>This parameter requires a JSON text string argument.</p>
<p>For storing multiple values, we recommend that you use a JSON text
string argument and specify key/value pairs. For more information, see
<a
href="https://docs.aws.amazon.com/cli/latest/userguide/cli-usage-parameters.html">Specifying
parameter values for the Amazon Web Services CLI</a> in the Amazon Web
Services CLI User Guide.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$untag_resource(
      SecretId = "string",
      TagKeys = list(
        "string"
      )
    )

### Examples

    ## Not run: 
    # The following example shows how to remove two tags from a secret's
    # metadata. For each, both the tag and the associated value are removed.
    # There is no output from this API. To see the result, use the
    # DescribeSecret operation.
    svc$untag_resource(
      SecretId = "MyTestDatabaseSecret",
      TagKeys = list(
        "FirstTag",
        "SecondTag"
      )
    )

    ## End(Not run)
