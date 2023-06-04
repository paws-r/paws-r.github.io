<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>shield_disable_application_layer_automatic_response</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Disable the Shield Advanced automatic application layer DDoS mitigation feature for the protected resource

### Description

Disable the Shield Advanced automatic application layer DDoS mitigation
feature for the protected resource. This stops Shield Advanced from
creating, verifying, and applying WAF rules for attacks that it detects
for the resource.

### Usage

    shield_disable_application_layer_automatic_response(ResourceArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="shield_disable_application_layer_automatic_response_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] The ARN (Amazon Resource Name) of the protected
resource.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$disable_application_layer_automatic_response(
      ResourceArn = "string"
    )
