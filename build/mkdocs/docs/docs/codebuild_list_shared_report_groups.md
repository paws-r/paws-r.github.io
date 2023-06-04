<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codebuild_list_shared_report_groups</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets a list of report groups that are shared with other Amazon Web Services accounts or users

### Description

Gets a list of report groups that are shared with other Amazon Web
Services accounts or users.

### Usage

    codebuild_list_shared_report_groups(sortOrder, sortBy, nextToken,
      maxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codebuild_list_shared_report_groups_:_sortOrder">sortOrder</code></td>
<td><p>The order in which to list shared report groups. Valid values
include:</p>
<ul>
<li><p><code>ASCENDING</code>: List in ascending order.</p></li>
<li><p><code>DESCENDING</code>: List in descending order.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="codebuild_list_shared_report_groups_:_sortBy">sortBy</code></td>
<td><p>The criterion to be used to list report groups shared with the
current Amazon Web Services account or user. Valid values include:</p>
<ul>
<li><p><code>ARN</code>: List based on the ARN.</p></li>
<li><p><code>MODIFIED_TIME</code>: List based on when information about
the shared report group was last changed.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="codebuild_list_shared_report_groups_:_nextToken">nextToken</code></td>
<td><p>During a previous call, the maximum number of items that can be
returned is the value specified in <code>maxResults</code>. If there
more items in the list, then a unique string called a <em>nextToken</em>
is returned. To get the next batch of items in the list, call this
operation again, adding the next token to the call. To get all of the
items in the list, keep calling this operation with each subsequent next
token that is returned, until no more next tokens are returned.</p></td>
</tr>
<tr class="even">
<td><code
id="codebuild_list_shared_report_groups_:_maxResults">maxResults</code></td>
<td><p>The maximum number of paginated shared report groups per
response. Use <code>nextToken</code> to iterate pages in the list of
returned <code>ReportGroup</code> objects. The default value is
100.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      nextToken = "string",
      reportGroups = list(
        "string"
      )
    )

### Request syntax

    svc$list_shared_report_groups(
      sortOrder = "ASCENDING"|"DESCENDING",
      sortBy = "ARN"|"MODIFIED_TIME",
      nextToken = "string",
      maxResults = 123
    )
