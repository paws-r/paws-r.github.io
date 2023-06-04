<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ecr_get_lifecycle_policy_preview</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the results of the lifecycle policy preview request for the specified repository

### Description

Retrieves the results of the lifecycle policy preview request for the
specified repository.

### Usage

    ecr_get_lifecycle_policy_preview(registryId, repositoryName, imageIds,
      nextToken, maxResults, filter)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ecr_get_lifecycle_policy_preview_:_registryId">registryId</code></td>
<td><p>The Amazon Web Services account ID associated with the registry
that contains the repository. If you do not specify a registry, the
default registry is assumed.</p></td>
</tr>
<tr class="even">
<td><code
id="ecr_get_lifecycle_policy_preview_:_repositoryName">repositoryName</code></td>
<td><p>[required] The name of the repository.</p></td>
</tr>
<tr class="odd">
<td><code
id="ecr_get_lifecycle_policy_preview_:_imageIds">imageIds</code></td>
<td><p>The list of imageIDs to be included.</p></td>
</tr>
<tr class="even">
<td><code
id="ecr_get_lifecycle_policy_preview_:_nextToken">nextToken</code></td>
<td><p>The <code>nextToken</code> value returned from a previous
paginated <code>GetLifecyclePolicyPreviewRequest</code> request where
<code>maxResults</code> was used and the results exceeded the value of
that parameter. Pagination continues from the end of the previous
results that returned the <code>nextToken</code> value. This value is
<code>null</code> when there are no more results to return. This option
cannot be used when you specify images with
<code>imageIds</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="ecr_get_lifecycle_policy_preview_:_maxResults">maxResults</code></td>
<td><p>The maximum number of repository results returned by
<code>GetLifecyclePolicyPreviewRequest</code> in paginated output. When
this parameter is used, <code>GetLifecyclePolicyPreviewRequest</code>
only returns <code>maxResults</code> results in a single page along with
a <code>nextToken</code> response element. The remaining results of the
initial request can be seen by sending another
<code>GetLifecyclePolicyPreviewRequest</code> request with the returned
<code>nextToken</code> value. This value can be between 1 and 1000. If
this parameter is not used, then
<code>GetLifecyclePolicyPreviewRequest</code> returns up to 100 results
and a <code>nextToken</code> value, if applicable. This option cannot be
used when you specify images with <code>imageIds</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ecr_get_lifecycle_policy_preview_:_filter">filter</code></td>
<td><p>An optional parameter that filters results based on image tag
status and all tags, if tagged.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      registryId = "string",
      repositoryName = "string",
      lifecyclePolicyText = "string",
      status = "IN_PROGRESS"|"COMPLETE"|"EXPIRED"|"FAILED",
      nextToken = "string",
      previewResults = list(
        list(
          imageTags = list(
            "string"
          ),
          imageDigest = "string",
          imagePushedAt = as.POSIXct(
            "2015-01-01"
          ),
          action = list(
            type = "EXPIRE"
          ),
          appliedRulePriority = 123
        )
      ),
      summary = list(
        expiringImageTotalCount = 123
      )
    )

### Request syntax

    svc$get_lifecycle_policy_preview(
      registryId = "string",
      repositoryName = "string",
      imageIds = list(
        list(
          imageDigest = "string",
          imageTag = "string"
        )
      ),
      nextToken = "string",
      maxResults = 123,
      filter = list(
        tagStatus = "TAGGED"|"UNTAGGED"|"ANY"
      )
    )
