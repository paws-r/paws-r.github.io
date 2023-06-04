<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>imagebuilder_list_image_packages</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## List the Packages that are associated with an Image Build Version, as determined by Amazon Web Services Systems Manager Inventory at build time

### Description

List the Packages that are associated with an Image Build Version, as
determined by Amazon Web Services Systems Manager Inventory at build
time.

### Usage

    imagebuilder_list_image_packages(imageBuildVersionArn, maxResults,
      nextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="imagebuilder_list_image_packages_:_imageBuildVersionArn">imageBuildVersionArn</code></td>
<td><p>[required] Filter results for the ListImagePackages request by
the Image Build Version ARN</p></td>
</tr>
<tr class="even">
<td><code
id="imagebuilder_list_image_packages_:_maxResults">maxResults</code></td>
<td><p>The maximum items to return in a request.</p></td>
</tr>
<tr class="odd">
<td><code
id="imagebuilder_list_image_packages_:_nextToken">nextToken</code></td>
<td><p>A token to specify where to start paginating. This is the
NextToken from a previously truncated response.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      requestId = "string",
      imagePackageList = list(
        list(
          packageName = "string",
          packageVersion = "string"
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_image_packages(
      imageBuildVersionArn = "string",
      maxResults = 123,
      nextToken = "string"
    )
