<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>shield_enable_application_layer_automatic_response</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Enable the Shield Advanced automatic application layer DDoS mitigation for the protected resource

### Description

Enable the Shield Advanced automatic application layer DDoS mitigation
for the protected resource.

This feature is available for Amazon CloudFront distributions and
Application Load Balancers only.

This causes Shield Advanced to create, verify, and apply WAF rules for
DDoS attacks that it detects for the resource. Shield Advanced applies
the rules in a Shield rule group inside the web ACL that you've
associated with the resource. For information about how automatic
mitigation works and the requirements for using it, see [Shield Advanced
automatic application layer DDoS
mitigation](https://docs.aws.amazon.com/waf/latest/developerguide/ddos-automatic-app-layer-response.html).

Don't use this action to make changes to automatic mitigation settings
when it's already enabled for a resource. Instead, use
`update_application_layer_automatic_response`.

To use this feature, you must associate a web ACL with the protected
resource. The web ACL must be created using the latest version of WAF
(v2). You can associate the web ACL through the Shield Advanced console
at
[https://console.aws.amazon.com/wafv2/shieldv2#/](https://us-east-1.console.aws.amazon.com/wafv2/shieldv2#/).
For more information, see [Getting Started with Shield
Advanced](https://docs.aws.amazon.com/waf/latest/developerguide/getting-started-ddos.html).
You can also associate the web ACL to the resource through the WAF
console or the WAF API, but you must manage Shield Advanced automatic
mitigation through Shield Advanced. For information about WAF, see [WAF
Developer
Guide](https://docs.aws.amazon.com/waf/latest/developerguide/).

### Usage

    shield_enable_application_layer_automatic_response(ResourceArn, Action)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="shield_enable_application_layer_automatic_response_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] The ARN (Amazon Resource Name) of the protected
resource.</p></td>
</tr>
<tr class="even">
<td><code
id="shield_enable_application_layer_automatic_response_:_Action">Action</code></td>
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

    svc$enable_application_layer_automatic_response(
      ResourceArn = "string",
      Action = list(
        Block = list(),
        Count = list()
      )
    )
