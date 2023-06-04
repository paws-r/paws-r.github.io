<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ecr_describe_images</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns metadata about the images in a repository

### Description

Returns metadata about the images in a repository.

Beginning with Docker version 1.9, the Docker client compresses image
layers before pushing them to a V2 Docker registry. The output of the
`⁠docker images⁠` command shows the uncompressed image size, so it may
return a larger image size than the image sizes returned by
`describe_images`.

### Usage

    ecr_describe_images(registryId, repositoryName, imageIds, nextToken,
      maxResults, filter)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ecr_describe_images_:_registryId">registryId</code></td>
<td><p>The Amazon Web Services account ID associated with the registry
that contains the repository in which to describe images. If you do not
specify a registry, the default registry is assumed.</p></td>
</tr>
<tr class="even">
<td><code
id="ecr_describe_images_:_repositoryName">repositoryName</code></td>
<td><p>[required] The repository that contains the images to
describe.</p></td>
</tr>
<tr class="odd">
<td><code id="ecr_describe_images_:_imageIds">imageIds</code></td>
<td><p>The list of image IDs for the requested repository.</p></td>
</tr>
<tr class="even">
<td><code id="ecr_describe_images_:_nextToken">nextToken</code></td>
<td><p>The <code>nextToken</code> value returned from a previous
paginated <code>describe_images</code> request where
<code>maxResults</code> was used and the results exceeded the value of
that parameter. Pagination continues from the end of the previous
results that returned the <code>nextToken</code> value. This value is
<code>null</code> when there are no more results to return. This option
cannot be used when you specify images with
<code>imageIds</code>.</p></td>
</tr>
<tr class="odd">
<td><code id="ecr_describe_images_:_maxResults">maxResults</code></td>
<td><p>The maximum number of repository results returned by
<code>describe_images</code> in paginated output. When this parameter is
used, <code>describe_images</code> only returns <code>maxResults</code>
results in a single page along with a <code>nextToken</code> response
element. The remaining results of the initial request can be seen by
sending another <code>describe_images</code> request with the returned
<code>nextToken</code> value. This value can be between 1 and 1000. If
this parameter is not used, then <code>describe_images</code> returns up
to 100 results and a <code>nextToken</code> value, if applicable. This
option cannot be used when you specify images with
<code>imageIds</code>.</p></td>
</tr>
<tr class="even">
<td><code id="ecr_describe_images_:_filter">filter</code></td>
<td><p>The filter key and value with which to filter your
<code>describe_images</code> results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      imageDetails = list(
        list(
          registryId = "string",
          repositoryName = "string",
          imageDigest = "string",
          imageTags = list(
            "string"
          ),
          imageSizeInBytes = 123,
          imagePushedAt = as.POSIXct(
            "2015-01-01"
          ),
          imageScanStatus = list(
            status = "IN_PROGRESS"|"COMPLETE"|"FAILED"|"UNSUPPORTED_IMAGE"|"ACTIVE"|"PENDING"|"SCAN_ELIGIBILITY_EXPIRED"|"FINDINGS_UNAVAILABLE",
            description = "string"
          ),
          imageScanFindingsSummary = list(
            imageScanCompletedAt = as.POSIXct(
              "2015-01-01"
            ),
            vulnerabilitySourceUpdatedAt = as.POSIXct(
              "2015-01-01"
            ),
            findingSeverityCounts = list(
              123
            )
          ),
          imageManifestMediaType = "string",
          artifactMediaType = "string",
          lastRecordedPullTime = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$describe_images(
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
