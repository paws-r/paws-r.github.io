<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lightsail_get_bundles</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the bundles that you can apply to an Amazon Lightsail instance when you create it

### Description

Returns the bundles that you can apply to an Amazon Lightsail instance
when you create it.

A bundle describes the specifications of an instance, such as the
monthly cost, amount of memory, the number of vCPUs, amount of storage
space, and monthly network data transfer quota.

Bundles are referred to as *instance plans* in the Lightsail console.

### Usage

    lightsail_get_bundles(includeInactive, pageToken, appCategory)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lightsail_get_bundles_:_includeInactive">includeInactive</code></td>
<td><p>A Boolean value that indicates whether to include inactive
(unavailable) bundles in the response of your request.</p></td>
</tr>
<tr class="even">
<td><code id="lightsail_get_bundles_:_pageToken">pageToken</code></td>
<td><p>The token to advance to the next page of results from your
request.</p>
<p>To get a page token, perform an initial <code>get_bundles</code>
request. If your results are paginated, the response will return a next
page token that you can specify as the page token in a subsequent
request.</p></td>
</tr>
<tr class="odd">
<td><code
id="lightsail_get_bundles_:_appCategory">appCategory</code></td>
<td><p>Returns a list of bundles that are specific to Lightsail for
Research.</p>
<p>You must use this parameter to view Lightsail for Research
bundles.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      bundles = list(
        list(
          price = 123.0,
          cpuCount = 123,
          diskSizeInGb = 123,
          bundleId = "string",
          instanceType = "string",
          isActive = TRUE|FALSE,
          name = "string",
          power = 123,
          ramSizeInGb = 123.0,
          transferPerMonthInGb = 123,
          supportedPlatforms = list(
            "LINUX_UNIX"|"WINDOWS"
          ),
          supportedAppCategories = list(
            "LfR"
          )
        )
      ),
      nextPageToken = "string"
    )

### Request syntax

    svc$get_bundles(
      includeInactive = TRUE|FALSE,
      pageToken = "string",
      appCategory = "LfR"
    )
