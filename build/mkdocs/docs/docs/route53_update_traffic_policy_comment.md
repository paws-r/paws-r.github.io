<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53_update_traffic_policy_comment</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the comment for a specified traffic policy version

### Description

Updates the comment for a specified traffic policy version.

### Usage

    route53_update_traffic_policy_comment(Id, Version, Comment)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="route53_update_traffic_policy_comment_:_Id">Id</code></td>
<td><p>[required] The value of <code>Id</code> for the traffic policy
that you want to update the comment for.</p></td>
</tr>
<tr class="even">
<td><code
id="route53_update_traffic_policy_comment_:_Version">Version</code></td>
<td><p>[required] The value of <code>Version</code> for the traffic
policy that you want to update the comment for.</p></td>
</tr>
<tr class="odd">
<td><code
id="route53_update_traffic_policy_comment_:_Comment">Comment</code></td>
<td><p>[required] The new comment for the specified traffic policy and
version.</p></td>
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

    svc$update_traffic_policy_comment(
      Id = "string",
      Version = 123,
      Comment = "string"
    )
