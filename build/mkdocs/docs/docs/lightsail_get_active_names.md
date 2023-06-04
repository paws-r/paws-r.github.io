<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lightsail_get_active_names</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the names of all active (not deleted) resources

### Description

Returns the names of all active (not deleted) resources.

### Usage

    lightsail_get_active_names(pageToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lightsail_get_active_names_:_pageToken">pageToken</code></td>
<td><p>The token to advance to the next page of results from your
request.</p>
<p>To get a page token, perform an initial <code>get_active_names</code>
request. If your results are paginated, the response will return a next
page token that you can specify as the page token in a subsequent
request.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      activeNames = list(
        "string"
      ),
      nextPageToken = "string"
    )

### Request syntax

    svc$get_active_names(
      pageToken = "string"
    )
