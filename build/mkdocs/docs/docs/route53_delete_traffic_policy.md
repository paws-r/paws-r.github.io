<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53_delete_traffic_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a traffic policy

### Description

Deletes a traffic policy.

When you delete a traffic policy, Route 53 sets a flag on the policy to
indicate that it has been deleted. However, Route 53 never fully deletes
the traffic policy. Note the following:

-   Deleted traffic policies aren't listed if you run
    `list_traffic_policies`.

-   There's no way to get a list of deleted policies.

-   If you retain the ID of the policy, you can get information about
    the policy, including the traffic policy document, by running
    `get_traffic_policy`.

### Usage

    route53_delete_traffic_policy(Id, Version)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="route53_delete_traffic_policy_:_Id">Id</code></td>
<td><p>[required] The ID of the traffic policy that you want to
delete.</p></td>
</tr>
<tr class="even">
<td><code
id="route53_delete_traffic_policy_:_Version">Version</code></td>
<td><p>[required] The version number of the traffic policy that you want
to delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_traffic_policy(
      Id = "string",
      Version = 123
    )
