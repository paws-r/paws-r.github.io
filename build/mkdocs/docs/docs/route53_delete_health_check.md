<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53_delete_health_check</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a health check

### Description

Deletes a health check.

Amazon Route 53 does not prevent you from deleting a health check even
if the health check is associated with one or more resource record sets.
If you delete a health check and you don't update the associated
resource record sets, the future status of the health check can't be
predicted and may change. This will affect the routing of DNS queries
for your DNS failover configuration. For more information, see
[Replacing and Deleting Health
Checks](https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/health-checks-creating-deleting.html#health-checks-deleting.html)
in the *Amazon Route 53 Developer Guide*.

If you're using Cloud Map and you configured Cloud Map to create a Route
53 health check when you register an instance, you can't use the Route
53 `delete_health_check` command to delete the health check. The health
check is deleted automatically when you deregister the instance; there
can be a delay of several hours before the health check is deleted from
Route 53.

### Usage

    route53_delete_health_check(HealthCheckId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="route53_delete_health_check_:_HealthCheckId">HealthCheckId</code></td>
<td><p>[required] The ID of the health check that you want to
delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_health_check(
      HealthCheckId = "string"
    )
