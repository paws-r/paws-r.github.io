<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53_update_hosted_zone_comment</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the comment for a specified hosted zone

### Description

Updates the comment for a specified hosted zone.

### Usage

    route53_update_hosted_zone_comment(Id, Comment)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="route53_update_hosted_zone_comment_:_Id">Id</code></td>
<td><p>[required] The ID for the hosted zone that you want to update the
comment for.</p></td>
</tr>
<tr class="even">
<td><code
id="route53_update_hosted_zone_comment_:_Comment">Comment</code></td>
<td><p>The new comment for the hosted zone. If you don't specify a value
for <code>Comment</code>, Amazon Route 53 deletes the existing value of
the <code>Comment</code> element, if any.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      HostedZone = list(
        Id = "string",
        Name = "string",
        CallerReference = "string",
        Config = list(
          Comment = "string",
          PrivateZone = TRUE|FALSE
        ),
        ResourceRecordSetCount = 123,
        LinkedService = list(
          ServicePrincipal = "string",
          Description = "string"
        )
      )
    )

### Request syntax

    svc$update_hosted_zone_comment(
      Id = "string",
      Comment = "string"
    )
