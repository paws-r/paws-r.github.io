<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ecrpublic_describe_images</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns metadata that's related to the images in a repository in a public registry

### Description

Returns metadata that's related to the images in a repository in a
public registry.

Beginning with Docker version 1.9, the Docker client compresses image
layers before pushing them to a V2 Docker registry. The output of the
`⁠docker images⁠` command shows the uncompressed image size. Therefore, it
might return a larger image size than the image sizes that are returned
by `describe_images`.

### Usage

    ecrpublic_describe_images(registryId, repositoryName, imageIds,
      nextToken, maxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ecrpublic_describe_images_:_registryId">registryId</code></td>
<td><p>The Amazon Web Services account ID that's associated with the
public registry that contains the repository where images are described.
If you do not specify a registry, the default public registry is
assumed.</p></td>
</tr>
<tr class="even">
<td><code
id="ecrpublic_describe_images_:_repositoryName">repositoryName</code></td>
<td><p>[required] The repository that contains the images to
describe.</p></td>
</tr>
<tr class="odd">
<td><code id="ecrpublic_describe_images_:_imageIds">imageIds</code></td>
<td><p>The list of image IDs for the requested repository.</p></td>
</tr>
<tr class="even">
<td><code
id="ecrpublic_describe_images_:_nextToken">nextToken</code></td>
<td><p>The <code>nextToken</code> value that's returned from a previous
paginated <code>describe_images</code> request where
<code>maxResults</code> was used and the results exceeded the value of
that parameter. Pagination continues from the end of the previous
results that returned the <code>nextToken</code> value. If there are no
more results to return, this value is <code>null</code>. If you specify
images with <code>imageIds</code>, you can't use this option.</p></td>
</tr>
<tr class="odd">
<td><code
id="ecrpublic_describe_images_:_maxResults">maxResults</code></td>
<td><p>The maximum number of repository results that's returned by
<code>describe_images</code> in paginated output. When this parameter is
used, <code>describe_images</code> only returns <code>maxResults</code>
results in a single page along with a <code>nextToken</code> response
element. You can see the remaining results of the initial request by
sending another <code>describe_images</code> request with the returned
<code>nextToken</code> value. This value can be between 1 and 1000. If
this parameter isn't used, then <code>describe_images</code> returns up
to 100 results and a <code>nextToken</code> value, if applicable. If you
specify images with <code>imageIds</code>, you can't use this
option.</p></td>
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
          imageManifestMediaType = "string",
          artifactMediaType = "string"
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
      maxResults = 123
    )
