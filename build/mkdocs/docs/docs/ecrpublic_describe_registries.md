<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ecrpublic_describe_registries</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns details for a public registry

### Description

Returns details for a public registry.

### Usage

    ecrpublic_describe_registries(nextToken, maxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ecrpublic_describe_registries_:_nextToken">nextToken</code></td>
<td><p>The <code>nextToken</code> value that's returned from a previous
paginated <code>describe_registries</code> request where
<code>maxResults</code> was used and the results exceeded the value of
that parameter. Pagination continues from the end of the previous
results that returned the <code>nextToken</code> value. If there are no
more results to return, this value is <code>null</code>.</p>
<p>This token should be treated as an opaque identifier that is only
used to retrieve the next items in a list and not for other programmatic
purposes.</p></td>
</tr>
<tr class="even">
<td><code
id="ecrpublic_describe_registries_:_maxResults">maxResults</code></td>
<td><p>The maximum number of repository results that's returned by
<code>describe_registries</code> in paginated output. When this
parameter is used, <code>describe_registries</code> only returns
<code>maxResults</code> results in a single page along with a
<code>nextToken</code> response element. The remaining results of the
initial request can be seen by sending another
<code>describe_registries</code> request with the returned
<code>nextToken</code> value. This value can be between 1 and 1000. If
this parameter isn't used, then <code>describe_registries</code> returns
up to 100 results and a <code>nextToken</code> value, if
applicable.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      registries = list(
        list(
          registryId = "string",
          registryArn = "string",
          registryUri = "string",
          verified = TRUE|FALSE,
          aliases = list(
            list(
              name = "string",
              status = "ACTIVE"|"PENDING"|"REJECTED",
              primaryRegistryAlias = TRUE|FALSE,
              defaultRegistryAlias = TRUE|FALSE
            )
          )
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$describe_registries(
      nextToken = "string",
      maxResults = 123
    )
