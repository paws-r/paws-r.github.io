<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ecr_describe_repositories</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes image repositories in a registry

### Description

Describes image repositories in a registry.

### Usage

    ecr_describe_repositories(registryId, repositoryNames, nextToken,
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
id="ecr_describe_repositories_:_registryId">registryId</code></td>
<td><p>The Amazon Web Services account ID associated with the registry
that contains the repositories to be described. If you do not specify a
registry, the default registry is assumed.</p></td>
</tr>
<tr class="even">
<td><code
id="ecr_describe_repositories_:_repositoryNames">repositoryNames</code></td>
<td><p>A list of repositories to describe. If this parameter is omitted,
then all repositories in a registry are described.</p></td>
</tr>
<tr class="odd">
<td><code
id="ecr_describe_repositories_:_nextToken">nextToken</code></td>
<td><p>The <code>nextToken</code> value returned from a previous
paginated <code>describe_repositories</code> request where
<code>maxResults</code> was used and the results exceeded the value of
that parameter. Pagination continues from the end of the previous
results that returned the <code>nextToken</code> value. This value is
<code>null</code> when there are no more results to return. This option
cannot be used when you specify repositories with
<code>repositoryNames</code>.</p>
<p>This token should be treated as an opaque identifier that is only
used to retrieve the next items in a list and not for other programmatic
purposes.</p></td>
</tr>
<tr class="even">
<td><code
id="ecr_describe_repositories_:_maxResults">maxResults</code></td>
<td><p>The maximum number of repository results returned by
<code>describe_repositories</code> in paginated output. When this
parameter is used, <code>describe_repositories</code> only returns
<code>maxResults</code> results in a single page along with a
<code>nextToken</code> response element. The remaining results of the
initial request can be seen by sending another
<code>describe_repositories</code> request with the returned
<code>nextToken</code> value. This value can be between 1 and 1000. If
this parameter is not used, then <code>describe_repositories</code>
returns up to 100 results and a <code>nextToken</code> value, if
applicable. This option cannot be used when you specify repositories
with <code>repositoryNames</code>.</p></td>
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
          ),
          imageTagMutability = "MUTABLE"|"IMMUTABLE",
          imageScanningConfiguration = list(
            scanOnPush = TRUE|FALSE
          ),
          encryptionConfiguration = list(
            encryptionType = "AES256"|"KMS",
            kmsKey = "string"
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

### Examples

    ## Not run: 
    # The following example obtains a list and description of all repositories
    # in the default registry to which the current user has access.
    svc$describe_repositories()

    ## End(Not run)
