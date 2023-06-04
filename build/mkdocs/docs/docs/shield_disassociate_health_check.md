<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>shield_disassociate_health_check</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes health-based detection from the Shield Advanced protection for a resource

### Description

Removes health-based detection from the Shield Advanced protection for a
resource. Shield Advanced health-based detection uses the health of your
Amazon Web Services resource to improve responsiveness and accuracy in
attack detection and response.

You define the health check in Route 53 and then associate or
disassociate it with your Shield Advanced protection. For more
information, see [Shield Advanced Health-Based
Detection](https://docs.aws.amazon.com/waf/latest/developerguide/ddos-overview.html#ddos-advanced-health-check-option)
in the *WAF Developer Guide*.

### Usage

    shield_disassociate_health_check(ProtectionId, HealthCheckArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="shield_disassociate_health_check_:_ProtectionId">ProtectionId</code></td>
<td><p>[required] The unique identifier (ID) for the Protection object
to remove the health check association from.</p></td>
</tr>
<tr class="even">
<td><code
id="shield_disassociate_health_check_:_HealthCheckArn">HealthCheckArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the health check
that is associated with the protection.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$disassociate_health_check(
      ProtectionId = "string",
      HealthCheckArn = "string"
    )
