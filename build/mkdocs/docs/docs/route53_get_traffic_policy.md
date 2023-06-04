<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53_get_traffic_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets information about a specific traffic policy version

### Description

Gets information about a specific traffic policy version.

For information about how of deleting a traffic policy affects the
response from `get_traffic_policy`, see `delete_traffic_policy`.

### Usage

    route53_get_traffic_policy(Id, Version)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="route53_get_traffic_policy_:_Id">Id</code></td>
<td><p>[required] The ID of the traffic policy that you want to get
information about.</p></td>
</tr>
<tr class="even">
<td><code id="route53_get_traffic_policy_:_Version">Version</code></td>
<td><p>[required] The version number of the traffic policy that you want
to get information about.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      TrafficPolicy = list(
        Id = "string",
        Version = 123,
        Name = "string",
        Type = "SOA"|"A"|"TXT"|"NS"|"CNAME"|"MX"|"NAPTR"|"PTR"|"SRV"|"SPF"|"AAAA"|"CAA"|"DS",
        Document = "string",
        Comment = "string"
      )
    )

### Request syntax

    svc$get_traffic_policy(
      Id = "string",
      Version = 123
    )
