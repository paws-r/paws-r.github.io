<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53_get_change</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the current status of a change batch request

### Description

Returns the current status of a change batch request. The status is one
of the following values:

-   `PENDING` indicates that the changes in this request have not
    propagated to all Amazon Route 53 DNS servers. This is the initial
    status of all change batch requests.

-   `INSYNC` indicates that the changes have propagated to all Route 53
    DNS servers.

### Usage

    route53_get_change(Id)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="route53_get_change_:_Id">Id</code></td>
<td><p>[required] The ID of the change batch request. The value that you
specify here is the value that <code>change_resource_record_sets</code>
returned in the <code>Id</code> element when you submitted the
request.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ChangeInfo = list(
        Id = "string",
        Status = "PENDING"|"INSYNC",
        SubmittedAt = as.POSIXct(
          "2015-01-01"
        ),
        Comment = "string"
      )
    )

### Request syntax

    svc$get_change(
      Id = "string"
    )
