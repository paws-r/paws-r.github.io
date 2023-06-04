<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>comprehend_put_resource_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Attaches a resource-based policy to a custom model

### Description

Attaches a resource-based policy to a custom model. You can use this
policy to authorize an entity in another Amazon Web Services account to
import the custom model, which replicates it in Amazon Comprehend in
their account.

### Usage

    comprehend_put_resource_policy(ResourceArn, ResourcePolicy,
      PolicyRevisionId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="comprehend_put_resource_policy_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the custom model to
attach the policy to.</p></td>
</tr>
<tr class="even">
<td><code
id="comprehend_put_resource_policy_:_ResourcePolicy">ResourcePolicy</code></td>
<td><p>[required] The JSON resource-based policy to attach to your
custom model. Provide your JSON as a UTF-8 encoded string without line
breaks. To provide valid JSON for your policy, enclose the attribute
names and values in double quotes. If the JSON body is also enclosed in
double quotes, then you must escape the double quotes that are inside
the policy:</p>
<p><code
style="white-space: pre;">⁠"{\"attribute\": \"value\", \"attribute\": [\"value\"]}"⁠</code></p>
<p>To avoid escaping quotes, you can use single quotes to enclose the
policy and double quotes to enclose the JSON names and values:</p>
<p><code>'{"attribute": "value", "attribute": ["value"]}'</code></p></td>
</tr>
<tr class="odd">
<td><code
id="comprehend_put_resource_policy_:_PolicyRevisionId">PolicyRevisionId</code></td>
<td><p>The revision ID that Amazon Comprehend assigned to the policy
that you are updating. If you are creating a new policy that has no
prior version, don't use this parameter. Amazon Comprehend creates the
revision ID for you.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      PolicyRevisionId = "string"
    )

### Request syntax

    svc$put_resource_policy(
      ResourceArn = "string",
      ResourcePolicy = "string",
      PolicyRevisionId = "string"
    )
