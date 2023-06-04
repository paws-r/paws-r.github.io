<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lexmodelsv2_create_resource_policy_statement</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Adds a new resource policy statement to a bot or bot alias

### Description

Adds a new resource policy statement to a bot or bot alias. If a
resource policy exists, the statement is added to the current resource
policy. If a policy doesn't exist, a new policy is created.

You can't create a resource policy statement that allows cross-account
access.

### Usage

    lexmodelsv2_create_resource_policy_statement(resourceArn, statementId,
      effect, principal, action, condition, expectedRevisionId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lexmodelsv2_create_resource_policy_statement_:_resourceArn">resourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the bot or bot alias
that the resource policy is attached to.</p></td>
</tr>
<tr class="even">
<td><code
id="lexmodelsv2_create_resource_policy_statement_:_statementId">statementId</code></td>
<td><p>[required] The name of the statement. The ID is the same as the
<code>Sid</code> IAM property. The statement name must be unique within
the policy. For more information, see <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_elements_sid.html">IAM
JSON policy elements: Sid</a>.</p></td>
</tr>
<tr class="odd">
<td><code
id="lexmodelsv2_create_resource_policy_statement_:_effect">effect</code></td>
<td><p>[required] Determines whether the statement allows or denies
access to the resource.</p></td>
</tr>
<tr class="even">
<td><code
id="lexmodelsv2_create_resource_policy_statement_:_principal">principal</code></td>
<td><p>[required] An IAM principal, such as an IAM users, IAM roles, or
AWS services that is allowed or denied access to a resource. For more
information, see <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_elements_principal.html">AWS
JSON policy elements: Principal</a>.</p></td>
</tr>
<tr class="odd">
<td><code
id="lexmodelsv2_create_resource_policy_statement_:_action">action</code></td>
<td><p>[required] The Amazon Lex action that this policy either allows
or denies. The action must apply to the resource type of the specified
ARN. For more information, see <a
href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazonlexv2.html">Actions,
resources, and condition keys for Amazon Lex V2</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="lexmodelsv2_create_resource_policy_statement_:_condition">condition</code></td>
<td><p>Specifies a condition when the policy is in effect. If the
principal of the policy is a service principal, you must provide two
condition blocks, one with a SourceAccount global condition key and one
with a SourceArn global condition key.</p>
<p>For more information, see <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_elements_condition.html">IAM
JSON policy elements: Condition</a> .</p></td>
</tr>
<tr class="odd">
<td><code
id="lexmodelsv2_create_resource_policy_statement_:_expectedRevisionId">expectedRevisionId</code></td>
<td><p>The identifier of the revision of the policy to edit. If this
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

    svc$create_resource_policy_statement(
      resourceArn = "string",
      statementId = "string",
      effect = "Allow"|"Deny",
      principal = list(
        list(
          service = "string",
          arn = "string"
        )
      ),
      action = list(
        "string"
      ),
      condition = list(
        list(
          "string"
        )
      ),
      expectedRevisionId = "string"
    )
