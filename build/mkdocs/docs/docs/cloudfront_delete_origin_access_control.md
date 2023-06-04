<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudfront_delete_origin_access_control</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a CloudFront origin access control

### Description

Deletes a CloudFront origin access control.

You cannot delete an origin access control if it's in use. First, update
all distributions to remove the origin access control from all origins,
then delete the origin access control.

### Usage

    cloudfront_delete_origin_access_control(Id, IfMatch)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudfront_delete_origin_access_control_:_Id">Id</code></td>
<td><p>[required] The unique identifier of the origin access control
that you are deleting.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudfront_delete_origin_access_control_:_IfMatch">IfMatch</code></td>
<td><p>The current version (<code>ETag</code> value) of the origin
access control that you are deleting.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_origin_access_control(
      Id = "string",
      IfMatch = "string"
    )
