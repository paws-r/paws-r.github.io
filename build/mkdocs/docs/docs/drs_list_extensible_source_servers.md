<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>drs_list_extensible_source_servers</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of source servers on a staging account that are extensible, which means that: a

### Description

Returns a list of source servers on a staging account that are
extensible, which means that: a. The source server is not already
extended into this Account. b. The source server on the Account we’re
reading from is not an extension of another source server.

### Usage

    drs_list_extensible_source_servers(maxResults, nextToken,
      stagingAccountID)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="drs_list_extensible_source_servers_:_maxResults">maxResults</code></td>
<td><p>The maximum number of extensible source servers to
retrieve.</p></td>
</tr>
<tr class="even">
<td><code
id="drs_list_extensible_source_servers_:_nextToken">nextToken</code></td>
<td><p>The token of the next extensible source server to
retrieve.</p></td>
</tr>
<tr class="odd">
<td><code
id="drs_list_extensible_source_servers_:_stagingAccountID">stagingAccountID</code></td>
<td><p>[required] The Id of the staging Account to retrieve extensible
source servers from.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      items = list(
        list(
          arn = "string",
          hostname = "string",
          tags = list(
            "string"
          )
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_extensible_source_servers(
      maxResults = 123,
      nextToken = "string",
      stagingAccountID = "string"
    )
