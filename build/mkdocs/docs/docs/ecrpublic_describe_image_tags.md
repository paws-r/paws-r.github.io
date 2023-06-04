<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ecrpublic_describe_image_tags</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the image tag details for a repository in a public registry

### Description

Returns the image tag details for a repository in a public registry.

### Usage

    ecrpublic_describe_image_tags(registryId, repositoryName, nextToken,
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
id="ecrpublic_describe_image_tags_:_registryId">registryId</code></td>
<td><p>The Amazon Web Services account ID that's associated with the
public registry that contains the repository where images are described.
If you do not specify a registry, the default public registry is
assumed.</p></td>
</tr>
<tr class="even">
<td><code
id="ecrpublic_describe_image_tags_:_repositoryName">repositoryName</code></td>
<td><p>[required] The name of the repository that contains the image tag
details to describe.</p></td>
</tr>
<tr class="odd">
<td><code
id="ecrpublic_describe_image_tags_:_nextToken">nextToken</code></td>
<td><p>The <code>nextToken</code> value that's returned from a previous
paginated <code>describe_image_tags</code> request where
<code>maxResults</code> was used and the results exceeded the value of
that parameter. Pagination continues from the end of the previous
results that returned the <code>nextToken</code> value. If there are no
more results to return, this value is <code>null</code>. If you specify
images with <code>imageIds</code>, you can't use this option.</p></td>
</tr>
<tr class="even">
<td><code
id="ecrpublic_describe_image_tags_:_maxResults">maxResults</code></td>
<td><p>The maximum number of repository results that's returned by
<code>describe_image_tags</code> in paginated output. When this
parameter is used, <code>describe_image_tags</code> only returns
<code>maxResults</code> results in a single page along with a
<code>nextToken</code> response element. You can see the remaining
results of the initial request by sending another
<code>describe_image_tags</code> request with the returned
<code>nextToken</code> value. This value can be between 1 and 1000. If
this parameter isn't used, then <code>describe_image_tags</code> returns
up to 100 results and a <code>nextToken</code> value, if applicable. If
you specify images with <code>imageIds</code>, you can't use this
option.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      imageTagDetails = list(
        list(
          imageTag = "string",
          createdAt = as.POSIXct(
            "2015-01-01"
          ),
          imageDetail = list(
            imageDigest = "string",
            imageSizeInBytes = 123,
            imagePushedAt = as.POSIXct(
              "2015-01-01"
            ),
            imageManifestMediaType = "string",
            artifactMediaType = "string"
          )
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$describe_image_tags(
      registryId = "string",
      repositoryName = "string",
      nextToken = "string",
      maxResults = 123
    )
