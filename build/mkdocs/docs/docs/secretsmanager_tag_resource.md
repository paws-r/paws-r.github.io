<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>secretsmanager_tag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Attaches tags to a secret

### Description

Attaches tags to a secret. Tags consist of a key name and a value. Tags
are part of the secret's metadata. They are not associated with specific
versions of the secret. This operation appends tags to the existing list
of tags.

The following restrictions apply to tags:

-   Maximum number of tags per secret: 50

-   Maximum key length: 127 Unicode characters in UTF-8

-   Maximum value length: 255 Unicode characters in UTF-8

-   Tag keys and values are case sensitive.

-   Do not use the `⁠aws:⁠` prefix in your tag names or values because
    Amazon Web Services reserves it for Amazon Web Services use. You
    can't edit or delete tag names or values with this prefix. Tags with
    this prefix do not count against your tags per secret limit.

-   If you use your tagging schema across multiple services and
    resources, other services might have restrictions on allowed
    characters. Generally allowed characters: letters, spaces, and
    numbers representable in UTF-8, plus the following special
    characters: + - = . \_ : / @.

If you use tags as part of your security strategy, then adding or
removing a tag can change permissions. If successfully completing this
operation would result in you losing your permissions for this secret,
then the operation is blocked and returns an Access Denied error.

Secrets Manager generates a CloudTrail log entry when you call this
action. Do not include sensitive information in request parameters
because it might be logged. For more information, see [Logging Secrets
Manager events with
CloudTrail](https://docs.aws.amazon.com/secretsmanager/latest/userguide/monitoring-cloudtrail.html).

**Required permissions:** `secretsmanager:TagResource`. For more
information, see [IAM policy actions for Secrets
Manager](https://docs.aws.amazon.com/secretsmanager/latest/userguide/reference_iam-permissions.html#reference_iam-permissions_actions)
and [Authentication and access control in Secrets
Manager](https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access.html).

### Usage

    secretsmanager_tag_resource(SecretId, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="secretsmanager_tag_resource_:_SecretId">SecretId</code></td>
<td><p>[required] The identifier for the secret to attach tags to. You
can specify either the Amazon Resource Name (ARN) or the friendly name
of the secret.</p>
<p>For an ARN, we recommend that you specify a complete ARN rather than
a partial ARN. See <a
href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/troubleshoot.html#ARN_secretnamehyphen">Finding
a secret from a partial ARN</a>.</p></td>
</tr>
<tr class="even">
<td><code id="secretsmanager_tag_resource_:_Tags">Tags</code></td>
<td><p>[required] The tags to attach to the secret as a JSON text string
argument. Each element in the list consists of a <code>Key</code> and a
<code>Value</code>.</p>
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

    svc$tag_resource(
      SecretId = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )

### Examples

    ## Not run: 
    # The following example shows how to attach two tags each with a Key and
    # Value to a secret. There is no output from this API. To see the result,
    # use the DescribeSecret operation.
    svc$tag_resource(
      SecretId = "MyExampleSecret",
      Tags = list(
        list(
          Key = "FirstTag",
          Value = "SomeValue"
        ),
        list(
          Key = "SecondTag",
          Value = "AnotherValue"
        )
      )
    )

    ## End(Not run)
