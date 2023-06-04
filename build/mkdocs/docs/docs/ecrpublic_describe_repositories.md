<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ecrpublic_describe_repositories</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes repositories that are in a public registry

### Description

Describes repositories that are in a public registry.

### Usage

    ecrpublic_describe_repositories(registryId, repositoryNames, nextToken,
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
id="ecrpublic_describe_repositories_:_registryId">registryId</code></td>
<td><p>The Amazon Web Services account ID that's associated with the
registry that contains the repositories to be described. If you do not
specify a registry, the default public registry is assumed.</p></td>
</tr>
<tr class="even">
<td><code
id="ecrpublic_describe_repositories_:_repositoryNames">repositoryNames</code></td>
<td><p>A list of repositories to describe. If this parameter is omitted,
then all repositories in a registry are described.</p></td>
</tr>
<tr class="odd">
<td><code
id="ecrpublic_describe_repositories_:_nextToken">nextToken</code></td>
<td><p>The <code>nextToken</code> value that's returned from a previous
paginated <code>describe_repositories</code> request where
<code>maxResults</code> was used and the results exceeded the value of
that parameter. Pagination continues from the end of the previous
results that returned the <code>nextToken</code> value. If there are no
more results to return, this value is <code>null</code>. If you specify
repositories with <code>repositoryNames</code>, you can't use this
option.</p>
<p>This token should be treated as an opaque identifier that is only
used to retrieve the next items in a list and not for other programmatic
purposes.</p></td>
</tr>
<tr class="even">
<td><code
id="ecrpublic_describe_repositories_:_maxResults">maxResults</code></td>
<td><p>The maximum number of repository results that's returned by
<code>describe_repositories</code> in paginated output. When this
parameter is used, <code>describe_repositories</code> only returns
<code>maxResults</code> results in a single page along with a
<code>nextToken</code> response element. You can see the remaining
results of the initial request by sending another
<code>describe_repositories</code> request with the returned
<code>nextToken</code> value. This value can be between 1 and 1000. If
this parameter isn't used, then <code>describe_repositories</code>
returns up to 100 results and a <code>nextToken</code> value, if
applicable. If you specify repositories with
<code>repositoryNames</code>, you can't use this option.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      repositories = list(
        list(
          repositoryArn = "string",
          registryId = "string",
          repositoryName = "string",
          repositoryUri = "string",
          createdAt = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$describe_repositories(
      registryId = "string",
      repositoryNames = list(
        "string"
      ),
      nextToken = "string",
      maxResults = 123
    )
