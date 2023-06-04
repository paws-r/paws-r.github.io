<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codebuild_list_builds</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets a list of build IDs, with each build ID representing a single build

### Description

Gets a list of build IDs, with each build ID representing a single
build.

### Usage

    codebuild_list_builds(sortOrder, nextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="codebuild_list_builds_:_sortOrder">sortOrder</code></td>
<td><p>The order to list build IDs. Valid values include:</p>
<ul>
<li><p><code>ASCENDING</code>: List the build IDs in ascending order by
build ID.</p></li>
<li><p><code>DESCENDING</code>: List the build IDs in descending order
by build ID.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code id="codebuild_list_builds_:_nextToken">nextToken</code></td>
<td><p>During a previous call, if there are more than 100 items in the
list, only the first 100 items are returned, along with a unique string
called a <em>nextToken</em>. To get the next batch of items in the list,
call this operation again, adding the next token to the call. To get all
of the items in the list, keep calling this operation with each
subsequent next token that is returned, until no more next tokens are
returned.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ids = list(
        "string"
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_builds(
      sortOrder = "ASCENDING"|"DESCENDING",
      nextToken = "string"
    )
