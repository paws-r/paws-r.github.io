<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lightsail_get_bucket_bundles</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the bundles that you can apply to a Amazon Lightsail bucket

### Description

Returns the bundles that you can apply to a Amazon Lightsail bucket.

The bucket bundle specifies the monthly cost, storage quota, and data
transfer quota for a bucket.

Use the `update_bucket_bundle` action to update the bundle for a bucket.

### Usage

    lightsail_get_bucket_bundles(includeInactive)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lightsail_get_bucket_bundles_:_includeInactive">includeInactive</code></td>
<td><p>A Boolean value that indicates whether to include inactive
(unavailable) bundles in the response of your request.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      bundles = list(
        list(
          bundleId = "string",
          name = "string",
          price = 123.0,
          storagePerMonthInGb = 123,
          transferPerMonthInGb = 123,
          isActive = TRUE|FALSE
        )
      )
    )

### Request syntax

    svc$get_bucket_bundles(
      includeInactive = TRUE|FALSE
    )
