<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>networkfirewall_describe_resource_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves a resource policy that you created in a PutResourcePolicy request

### Description

Retrieves a resource policy that you created in a `put_resource_policy`
request.

### Usage

    networkfirewall_describe_resource_policy(ResourceArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="networkfirewall_describe_resource_policy_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the rule group or
firewall policy whose resource policy you want to retrieve.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Policy = "string"
    )

### Request syntax

    svc$describe_resource_policy(
      ResourceArn = "string"
    )
