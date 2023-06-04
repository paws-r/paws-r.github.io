<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudfront_delete_cloud_front_origin_access_identity</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Delete an origin access identity

### Description

Delete an origin access identity.

### Usage

    cloudfront_delete_cloud_front_origin_access_identity(Id, IfMatch)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudfront_delete_cloud_front_origin_access_identity_:_Id">Id</code></td>
<td><p>[required] The origin access identity's ID.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudfront_delete_cloud_front_origin_access_identity_:_IfMatch">IfMatch</code></td>
<td><p>The value of the <code>ETag</code> header you received from a
previous <code>GET</code> or <code>PUT</code> request. For example:
<code>E2QWRUHAPOMQZL</code>.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_cloud_front_origin_access_identity(
      Id = "string",
      IfMatch = "string"
    )
