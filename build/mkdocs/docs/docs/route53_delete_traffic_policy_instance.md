<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53_delete_traffic_policy_instance</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a traffic policy instance and all of the resource record sets that Amazon Route 53 created when you created the instance

### Description

Deletes a traffic policy instance and all of the resource record sets
that Amazon Route 53 created when you created the instance.

In the Route 53 console, traffic policy instances are known as policy
records.

### Usage

    route53_delete_traffic_policy_instance(Id)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="route53_delete_traffic_policy_instance_:_Id">Id</code></td>
<td><p>[required] The ID of the traffic policy instance that you want to
delete.</p>
<p>When you delete a traffic policy instance, Amazon Route 53 also
deletes all of the resource record sets that were created when you
created the traffic policy instance.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_traffic_policy_instance(
      Id = "string"
    )
