<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codebuild_list_reports</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of ARNs for the reports in the current Amazon Web Services account

### Description

Returns a list of ARNs for the reports in the current Amazon Web
Services account.

### Usage

    codebuild_list_reports(sortOrder, nextToken, maxResults, filter)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="codebuild_list_reports_:_sortOrder">sortOrder</code></td>
<td><p>Specifies the sort order for the list of returned reports. Valid
values are:</p>
<ul>
<li><p><code>ASCENDING</code>: return reports in chronological order
based on their creation date.</p></li>
<li><p><code>DESCENDING</code>: return reports in the reverse
chronological order based on their creation date.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code id="codebuild_list_reports_:_nextToken">nextToken</code></td>
<td><p>During a previous call, the maximum number of items that can be
returned is the value specified in <code>maxResults</code>. If there
more items in the list, then a unique string called a <em>nextToken</em>
is returned. To get the next batch of items in the list, call this
operation again, adding the next token to the call. To get all of the
items in the list, keep calling this operation with each subsequent next
token that is returned, until no more next tokens are returned.</p></td>
</tr>
<tr class="odd">
<td><code
id="codebuild_list_reports_:_maxResults">maxResults</code></td>
<td><p>The maximum number of paginated reports returned per response.
Use <code>nextToken</code> to iterate pages in the list of returned
<code>Report</code> objects. The default value is 100.</p></td>
</tr>
<tr class="even">
<td><code id="codebuild_list_reports_:_filter">filter</code></td>
<td><p>A <code>ReportFilter</code> object used to filter the returned
reports.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      nextToken = "string",
      reports = list(
        "string"
      )
    )

### Request syntax

    svc$list_reports(
      sortOrder = "ASCENDING"|"DESCENDING",
      nextToken = "string",
      maxResults = 123,
      filter = list(
        status = "GENERATING"|"SUCCEEDED"|"FAILED"|"INCOMPLETE"|"DELETING"
      )
    )
