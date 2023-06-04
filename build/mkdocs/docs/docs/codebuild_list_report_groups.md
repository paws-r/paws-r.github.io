<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codebuild_list_report_groups</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets a list ARNs for the report groups in the current Amazon Web Services account

### Description

Gets a list ARNs for the report groups in the current Amazon Web
Services account.

### Usage

    codebuild_list_report_groups(sortOrder, sortBy, nextToken, maxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codebuild_list_report_groups_:_sortOrder">sortOrder</code></td>
<td><p>Used to specify the order to sort the list of returned report
groups. Valid values are <code>ASCENDING</code> and
<code>DESCENDING</code>.</p></td>
</tr>
<tr class="even">
<td><code id="codebuild_list_report_groups_:_sortBy">sortBy</code></td>
<td><p>The criterion to be used to list build report groups. Valid
values include:</p>
<ul>
<li><p><code>CREATED_TIME</code>: List based on when each report group
was created.</p></li>
<li><p><code>LAST_MODIFIED_TIME</code>: List based on when each report
group was last changed.</p></li>
<li><p><code>NAME</code>: List based on each report group's
name.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="codebuild_list_report_groups_:_nextToken">nextToken</code></td>
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
id="codebuild_list_report_groups_:_maxResults">maxResults</code></td>
<td><p>The maximum number of paginated report groups returned per
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

    svc$list_report_groups(
      sortOrder = "ASCENDING"|"DESCENDING",
      sortBy = "NAME"|"CREATED_TIME"|"LAST_MODIFIED_TIME",
      nextToken = "string",
      maxResults = 123
    )
