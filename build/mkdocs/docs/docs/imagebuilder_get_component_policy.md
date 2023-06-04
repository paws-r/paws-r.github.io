<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>imagebuilder_get_component_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets a component policy

### Description

Gets a component policy.

### Usage

    imagebuilder_get_component_policy(componentArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="imagebuilder_get_component_policy_:_componentArn">componentArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the component whose
policy you want to retrieve.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      requestId = "string",
      policy = "string"
    )

### Request syntax

    svc$get_component_policy(
      componentArn = "string"
    )
