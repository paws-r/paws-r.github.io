<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>shield_update_application_layer_automatic_response</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates an existing Shield Advanced automatic application layer DDoS mitigation configuration for the specified resource

### Description

Updates an existing Shield Advanced automatic application layer DDoS
mitigation configuration for the specified resource.

### Usage

    shield_update_application_layer_automatic_response(ResourceArn, Action)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="shield_update_application_layer_automatic_response_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] The ARN (Amazon Resource Name) of the
resource.</p></td>
</tr>
<tr class="even">
<td><code
id="shield_update_application_layer_automatic_response_:_Action">Action</code></td>
<td><p>[required] Specifies the action setting that Shield Advanced
should use in the WAF rules that it creates on behalf of the protected
resource in response to DDoS attacks. You specify this as part of the
configuration for the automatic application layer DDoS mitigation
feature, when you enable or update automatic mitigation. Shield Advanced
creates the WAF rules in a Shield Advanced-managed rule group, inside
the web ACL that you have associated with the resource.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_application_layer_automatic_response(
      ResourceArn = "string",
      Action = list(
        Block = list(),
        Count = list()
      )
    )
