<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lightsail_get_distribution_latest_cache_reset</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the timestamp and status of the last cache reset of a specific Amazon Lightsail content delivery network (CDN) distribution

### Description

Returns the timestamp and status of the last cache reset of a specific
Amazon Lightsail content delivery network (CDN) distribution.

### Usage

    lightsail_get_distribution_latest_cache_reset(distributionName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lightsail_get_distribution_latest_cache_reset_:_distributionName">distributionName</code></td>
<td><p>The name of the distribution for which to return the timestamp of
the last cache reset.</p>
<p>Use the <code>get_distributions</code> action to get a list of
distribution names that you can specify.</p>
<p>When omitted, the response includes the latest cache reset timestamp
of all your distributions.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      status = "string",
      createTime = as.POSIXct(
        "2015-01-01"
      )
    )

### Request syntax

    svc$get_distribution_latest_cache_reset(
      distributionName = "string"
    )
