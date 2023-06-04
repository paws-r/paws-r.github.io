<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lexmodelsv2_update_resource_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Replaces the existing resource policy for a bot or bot alias with a new one

### Description

Replaces the existing resource policy for a bot or bot alias with a new
one. If the policy doesn't exist, Amazon Lex returns an exception.

### Usage

    lexmodelsv2_update_resource_policy(resourceArn, policy,
      expectedRevisionId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lexmodelsv2_update_resource_policy_:_resourceArn">resourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the bot or bot alias
that the resource policy is attached to.</p></td>
</tr>
<tr class="even">
<td><code
id="lexmodelsv2_update_resource_policy_:_policy">policy</code></td>
<td><p>[required] A resource policy to add to the resource. The policy
is a JSON structure that contains one or more statements that define the
policy. The policy must follow the IAM syntax. For more information
about the contents of a JSON policy document, see <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies.html">IAM
JSON policy reference</a> .</p>
<p>If the policy isn't valid, Amazon Lex returns a validation
exception.</p></td>
</tr>
<tr class="odd">
<td><code
id="lexmodelsv2_update_resource_policy_:_expectedRevisionId">expectedRevisionId</code></td>
<td><p>The identifier of the revision of the policy to update. If this
revision ID doesn't match the current revision ID, Amazon Lex throws an
exception.</p>
<p>If you don't specify a revision, Amazon Lex overwrites the contents
of the policy with the new values.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      resourceArn = "string",
      revisionId = "string"
    )

### Request syntax

    svc$update_resource_policy(
      resourceArn = "string",
      policy = "string",
      expectedRevisionId = "string"
    )
