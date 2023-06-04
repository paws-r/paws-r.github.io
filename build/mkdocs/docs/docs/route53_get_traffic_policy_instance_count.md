<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53_get_traffic_policy_instance_count</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets the number of traffic policy instances that are associated with the current Amazon Web Services account

### Description

Gets the number of traffic policy instances that are associated with the
current Amazon Web Services account.

### Usage

    route53_get_traffic_policy_instance_count()

### Value

A list with the following syntax:

    list(
      TrafficPolicyInstanceCount = 123
    )

### Request syntax

    svc$get_traffic_policy_instance_count()
