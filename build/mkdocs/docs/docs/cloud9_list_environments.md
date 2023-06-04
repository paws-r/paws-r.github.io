<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloud9_list_environments</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets a list of Cloud9 development environment identifiers

### Description

Gets a list of Cloud9 development environment identifiers.

### Usage

    cloud9_list_environments(nextToken, maxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloud9_list_environments_:_nextToken">nextToken</code></td>
<td><p>During a previous call, if there are more than 25 items in the
list, only the first 25 items are returned, along with a unique string
called a <em>next token</em>. To get the next batch of items in the
list, call this operation again, adding the next token to the call. To
get all of the items in the list, keep calling this operation with each
subsequent next token that is returned, until no more next tokens are
returned.</p></td>
</tr>
<tr class="even">
<td><code
id="cloud9_list_environments_:_maxResults">maxResults</code></td>
<td><p>The maximum number of environments to get identifiers
for.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      nextToken = "string",
      environmentIds = list(
        "string"
      )
    )

### Request syntax

    svc$list_environments(
      nextToken = "string",
      maxResults = 123
    )

### Examples

    ## Not run: 
    # 
    svc$list_environments()

    ## End(Not run)
