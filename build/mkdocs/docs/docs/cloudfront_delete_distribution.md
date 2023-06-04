<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudfront_delete_distribution</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Delete a distribution

### Description

Delete a distribution.

### Usage

    cloudfront_delete_distribution(Id, IfMatch)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="cloudfront_delete_distribution_:_Id">Id</code></td>
<td><p>[required] The distribution ID.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudfront_delete_distribution_:_IfMatch">IfMatch</code></td>
<td><p>The value of the <code>ETag</code> header that you received when
you disabled the distribution. For example:
<code>E2QWRUHAPOMQZL</code>.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_distribution(
      Id = "string",
      IfMatch = "string"
    )
