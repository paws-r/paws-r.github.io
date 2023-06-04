<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudfront_delete_function</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a CloudFront function

### Description

Deletes a CloudFront function.

You cannot delete a function if it's associated with a cache behavior.
First, update your distributions to remove the function association from
all cache behaviors, then delete the function.

To delete a function, you must provide the function's name and version
(`ETag` value). To get these values, you can use `list_functions` and
`describe_function`.

### Usage

    cloudfront_delete_function(Name, IfMatch)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="cloudfront_delete_function_:_Name">Name</code></td>
<td><p>[required] The name of the function that you are
deleting.</p></td>
</tr>
<tr class="even">
<td><code id="cloudfront_delete_function_:_IfMatch">IfMatch</code></td>
<td><p>[required] The current version (<code>ETag</code> value) of the
function that you are deleting, which you can get using
<code>describe_function</code>.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_function(
      Name = "string",
      IfMatch = "string"
    )
